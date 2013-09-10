import os
import re
import subprocess
import StringIO
import threading
import shlex
import sys
import shutil
import filecmp
from optparse import OptionParser
import stat
import glob

def abort(msg):
    """Print to stderr and stop with exit 1"""
    print >> sys.stderr, msg, "\n"
    sys.exit(1)
    
def getActions(binDir=False, appDir=False):
    if not os.path.exists ("setup"): abort ("This must be run from the unpacked distribution directory")
    parser = OptionParser("usage: %prog [options] configure | install | uninstall")
    root = os.getuid() == 0 
   
    if binDir: 
        if root: default = '/usr/bin'
        else: default = '~/bin'
        parser.add_option("--binDir", "-b", help="location to store executables [" + default + "]", default=default)
 
    if appDir: 
       if root: default = '/usr/share'
       else: default = '~/java'
       parser.add_option("--appDir", "-a", help="location to store java applications [" + default + "]", default=default)

    parser.add_option("--verbose", "-v", help="produce more output - this may appear twice to get even more", action="count")
    
    options, args = parser.parse_args()
    
    if len(args) != 1:abort("Must have one argument: 'configure, install' or 'uninstall'")
    
    arg = args[0].upper()
    if arg not in ["CONFIGURE", "INSTALL", "UNINSTALL"]: abort("Must have one argument: 'install' or 'uninstall'")
    return Actions(options.verbose), options, arg

class Actions(object):
    
    def __init__(self, verbosity):
        self.verbosity = verbosity
        self.asadminCommand = None
        self.domain = None
        self.config_path = None
        self.clashes = 0
        
    def configure(self, file_name, expected, config_file_path=None):
        if not config_file_path: config_file_path = os.path.join(self.config_path, file_name)
        config = os.path.exists(config_file_path)
        if config: config = os.path.getmtime(config_file_path)
        local = os.path.exists(file_name)
        if local: local = os.path.getmtime(file_name)
        if local and config: 
            if not filecmp.cmp(file_name, config_file_path):
                if local > config:
                    print "Won't overwrite " + file_name + " with the older file " + config_file_path
                else:
                    print "Won't overwrite " + file_name + " with the newer file " + config_file_path
        elif config:
            shutil.copy(config_file_path, file_name)
            if self.verbosity: "Copied " + config_file_path + " to " + file_name
        elif local:
            pass
        else:
            shutil.copy(file_name + ".example", file_name)
            if self.verbosity: "Copied " + config_file_path + " to " + file_name
        props = self.getProperties(file_name, [])
        example = self.getProperties(file_name + ".example", [])
        for key in expected:
            prop = props.get(key)
            if not prop:
                self.clashes += 1
                print "Error: property", key, "is not set in", file_name
        first = True
        for key in props.keys():
            if key in example:
                if props[key] != example[key]: print "Value for" , key, "in", file_name, "is", "'" + props[key] + "'", "which differs from example:", "'" + example[key] + "'"
            else:  print "Value for" , key, "in", file_name, "is", "'" + props[key] + "'", "is not in example"
        for key in example.keys():
            if key not in props: print "Value for" , key, "not in", file_name, "but is in example:", "'" + example[key] + "'"
        print "\nPlease edit", file_name, "to meet your requirements"
                
    def setConfigured(self):
        if self.clashes:
            print "Please edit configuration files and try again as", self.clashes, "errors were reported."
        else:
            f = open("configured", "w")
            f.close()
            
    def checkConfigured(self):
        if not os.path.exists("configured"): abort("Please make sure that 'setup configure' runs without errors")
            
    def getGlassfish(self, file_name, required):
        if not os.path.exists(file_name):
            shutil.copy(file_name + ".example", file_name)
            abort ("\nPlease edit " + file_name + " to meet your requirements then re-run the command")
        if os.stat(file_name).st_mode & stat.S_IROTH:
            abort("'" + fileName + "' must not be world readable")
        props = self.getProperties(file_name, required)
        
        glassfish = props["glassfish"]
        if not os.path.exists(glassfish): abort("glassfish directory " + glassfish + " specified in " + file_name + " does not exist")
        
        self.asadminCommand = os.path.join(glassfish, "bin", "asadmin") + " --port " + props["port"]
        
        self.domain = self.getAsadminProperty("property.administrative.domain.name")
        
        domain_path = os.path.join(glassfish, "glassfish", "domains", self.domain)
        if not os.path.exists(domain_path): abort("Domain directory " + domain_path + " does not exist")
        self.config_path = os.path.join(domain_path, "config") 
        if not os.path.exists(self.config_path): abort("Domain's config directory " + self.config_path + " does not exist")

        return props
    
    def deleteFileRealmUser(self, username):
        self.asadmin("delete-file-user " + username, tolerant=True)
    
    def addFileRealmUser(self, username, password):
        if self.getAsadminProperty("configs.config.server-config.security-service.activate-default-principal-to-role-mapping") == "false":
            self.setAsadminProperty("configs.config.server-config.security-service.activate-default-principal-to-role-mapping", "true")
            self.asadmin("stop-domain " + self.domain)
            self.asadmin("start-domain " + self.domain)
            
        digit = False
        lc = False
        uc = False
        for c in password:
            if c.isdigit(): digit = True
            elif c.islower(): lc = True
            elif c.isupper(): uc = True
        if not (digit and lc and uc) : abort("admin.password must contain at least one digit, a lower case character and an upper case character")
            
        self.asadmin("delete-file-user " + username, tolerant=True)
        f = open("pw", "w")
        print >> f, "AS_ADMIN_USERPASSWORD=" + password
        f.close() 
        self.asadmin("--passwordfile pw create-file-user --groups ICATAdmin " + username)
        os.remove("pw")
        
    def deploy(self, file):
        files = glob.glob(file)
        if len(files) != 1: abort("Exactly one file must match " + file)
        cmd = self.asadminCommand + " " + "deploy " + files[0]
        if self.verbosity: print "\nexecute: " + cmd 
        out, err, rc = self.execute(cmd)
        if self.verbosity > 1:
            if out: print out
        if err:
            for line in err.split("\n"):
                line = line.strip()
                if line:
                    if line.startswith("PER01"): continue
                    print line   
    
    def getProperties(self, fileName, needed):
        """Read properties files and check that the properties in the needed list are present"""
    
        if not os.path.exists(fileName): 
            abort (fileName + " file not found - please run './setup configure'")
        
        p = re.compile(r"")
        f = open(fileName)
        props = {}
        for line in f:
            line = line.strip()
            if line and not line.startswith("#") and not line.startswith("!"):
                nfirst = len(line)
                for sep in [r"\s*=\s*", r"\s*:\s*", r"\s+"]:
                    match = re.search(sep, line)
                    if match and match.start() < nfirst: 
                        nfirst = match.start()
                        nlast = match.end()
                if nfirst == len(line): abort (line, "found in " + fileName + " has no recognised separator between key and value") 
                key = line[:nfirst]
                value = line[nlast:]
                props[key] = value
        f.close()
        
        for item in needed:
            if (item not in props):
                abort(item + " must be specified in " + fileName)
        
        if self.verbosity > 1:
            print "\n" + fileName + " contains:"
            for item in props.items():
                print "  ", item[0], ":", item[1]
        
        return props
    
    def execute(self, cmd):
        cmd = shlex.split(cmd)
        proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stringOut = StringIO.StringIO()
       
        mstdout = Tee(proc.stdout, stringOut)
        mstdout.start()
        stringErr = StringIO.StringIO()
        mstderr = Tee(proc.stderr, stringErr)
        mstderr.start()
        rc = proc.wait()
    
        mstdout.join()
        mstderr.join()
        
        out = stringOut.getvalue()
        stringOut.close()
        
        err = stringErr.getvalue()
        stringErr.close()
        
        return out, err, rc
    
    def asadmin(self, command, tolerant=False, printOutput=False):
        cmd = self.asadminCommand + " " + command
        if self.verbosity: print "\nexecute: " + cmd 
        out, err, rc = self.execute(cmd)
        if self.verbosity > 1 or printOutput:
            if out: print out
            if err: print err
     
        if not tolerant and rc:
            if not self.verbosity: print cmd, " ->"
            abort(err)
    
    def installFile(self, file, dir=None):
        if not dir: dir = self.config_path
        if not os.path.exists(file): abort (file + " not found")
        dest = os.path.join(dir, file)
        if os.path.exists(dest):
            diff = not filecmp.cmp(file, dest)
            if diff:
                if os.path.getmtime(file) > os.path.getmtime(dest): 
                    shutil.copy(file , dir)
                    print "\n", dest, "has been overwritten"
                else:
                   abort(dest + " is newer than " + file)
        else:
            shutil.copy(file , dir)
            if self.verbosity:
                print "\n", file, "copied to", dir
            
    def removeFile(self, file, dir=None):
        if not dir: dir = self.config_path
        dest = os.path.join(dir, file)
        if os.path.exists(dest): 
            os.remove(dest)
            if self.verbosity:
                print "\n", file, "removed from", dir
            
    def getAppName(self, app):
        cmd = self.asadminCommand + " " + "list-applications"
        out, err, rc = self.execute(cmd)
        if rc: abort(err)
        for line in out.split("\n"):
            if (line.startswith(app + "-")):
                return line.split()[0]
            
    def getAsadminProperty(self, name):
        cmd = self.asadminCommand + " get " + name
        if self.verbosity: print "\nexecute: " + cmd 
        out, err, rc = self.execute(cmd)
        if rc: abort(err)
        return out.split("\n")[0].split("=")[1]
    
    def setAsadminProperty(self, name, value):
        cmd = self.asadminCommand + " set " + name + "=" + value
        if self.verbosity: print "\nexecute: " + cmd 
        out, err, rc = self.execute(cmd)
        if rc: abort(err)

class Tee(threading.Thread):
    
    def __init__(self, inst, *out):
        threading.Thread.__init__(self)
        self.inst = inst
        self.out = out
        
    def run(self):
        while 1:
            line = self.inst.readline()
            if not line: break
            for out in self.out:
                out.write(line)
