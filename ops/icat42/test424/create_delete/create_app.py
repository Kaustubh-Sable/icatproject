#!/usr/bin/env python
#
# $Id$
#
# The purpose of this script is to insert some content into the ICAT
#
# python insert.py http://localhost:8080 db username CIC password password
#

from suds.client import Client

import logging
import sys

logging.basicConfig(level=logging.CRITICAL)

args = sys.argv
if len(args) < 3 or len(args) % 2 == 0:
    print >> sys.stderr, "This must have two fixed arguments: protocol-hostname-port plugin-mnemonic \nfollowed by pairs of arguments to represent the credentials. For example:\n", args[0], "https://example.com:8181 db \\\n username root \\\n password guess\n"
    sys.exit(1)

protocolHostAndPort = args[1]
plugin = args[2]

client = Client(protocolHostAndPort + "/ICATService/ICAT?wsdl")
service = client.service
factory = client.factory

#
# create credentials for User
#
credentials = factory.create("credentials")

for i in range (3, len(args), 2): 
	entry = factory.create("credentials.entry")
	entry.key = args[i]
	entry.value = args[i + 1]
	credentials.entry.append(entry)
sessionId = service.login(plugin, credentials)

# application 
applications = service.search(sessionId, "Application[name='My App']")
if len(applications): 
    print "Application: 'My App' already exists ..."
    application = applications [0]
else:
    print "Application: creating 'My App' ..."
    application = factory.create("application")
    application.name = "My App"
    #application.fullName = "This is a test application"
    #application.description = "This is a test application"
    application.id = service.create(sessionId, application)

service.logout(sessionId)

#
# - the end -
#
