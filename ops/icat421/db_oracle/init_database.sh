#!/bin/bash
#
# $Id$
#

# load user details
. ./vars

sqlplus -s $DB_USERNAME/$DB_PASSWORD@localhost as sysdba <<EOF
set serveroutput on
set heading off
set feedback off

CREATE USER $DB_ICAT_USERNAME PROFILE "DEFAULT" IDENTIFIED BY "$DB_ICAT_PASSWORD" DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP" QUOTA UNLIMITED ON "USERS" ACCOUNT UNLOCK;
GRANT CREATE DATABASE LINK TO $DB_ICAT_USERNAME;
GRANT CREATE LIBRARY TO $DB_ICAT_USERNAME;
GRANT CREATE MATERIALIZED VIEW TO $DB_ICAT_USERNAME;
GRANT CREATE OPERATOR TO $DB_ICAT_USERNAME;
GRANT CREATE PROCEDURE TO $DB_ICAT_USERNAME;
GRANT CREATE PUBLIC DATABASE LINK TO $DB_ICAT_USERNAME;
GRANT CREATE PUBLIC SYNONYM TO $DB_ICAT_USERNAME;
GRANT CREATE SEQUENCE TO $DB_ICAT_USERNAME;
GRANT CREATE SESSION TO $DB_ICAT_USERNAME;
GRANT CREATE SYNONYM TO $DB_ICAT_USERNAME;
GRANT CREATE TABLE TO $DB_ICAT_USERNAME;
GRANT CREATE TRIGGER TO $DB_ICAT_USERNAME;
GRANT CREATE TYPE TO $DB_ICAT_USERNAME;
GRANT CREATE VIEW TO $DB_ICAT_USERNAME;
GRANT UNLIMITED TABLESPACE TO icat;
GRANT "CONNECT" TO $DB_ICAT_USERNAME;
GRANT "PLUSTRACE" TO $DB_ICAT_USERNAME;
GRANT "RESOURCE" TO $DB_ICAT_USERNAME;
GRANT CREATE JOB TO $DB_ICAT_USERNAME;

CREATE USER $DB_ICATUSER_USERNAME PROFILE "DEFAULT" IDENTIFIED BY "$DB_ICATUSER_PASSWORD" DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP" QUOTA UNLIMITED ON "USERS" ACCOUNT UNLOCK;
GRANT CREATE DATABASE LINK TO $DB_ICATUSER_USERNAME;
GRANT CREATE LIBRARY TO $DB_ICATUSER_USERNAME;
GRANT CREATE MATERIALIZED VIEW TO $DB_ICATUSER_USERNAME;
GRANT CREATE OPERATOR TO $DB_ICATUSER_USERNAME;
GRANT CREATE PROCEDURE TO $DB_ICATUSER_USERNAME;
GRANT CREATE PUBLIC DATABASE LINK TO $DB_ICATUSER_USERNAME;
GRANT CREATE PUBLIC SYNONYM TO $DB_ICATUSER_USERNAME;
GRANT CREATE SEQUENCE TO $DB_ICATUSER_USERNAME;
GRANT CREATE SESSION TO $DB_ICATUSER_USERNAME;
GRANT CREATE SYNONYM TO $DB_ICATUSER_USERNAME;
GRANT CREATE TABLE TO $DB_ICATUSER_USERNAME;
GRANT CREATE TRIGGER TO $DB_ICATUSER_USERNAME;
GRANT CREATE TYPE TO $DB_ICATUSER_USERNAME;
GRANT CREATE VIEW TO $DB_ICATUSER_USERNAME;
GRANT UNLIMITED TABLESPACE TO $DB_ICATUSER_USERNAME;
GRANT "CONNECT" TO $DB_ICATUSER_USERNAME;
GRANT "PLUSTRACE" TO $DB_ICATUSER_USERNAME;
GRANT "RESOURCE" TO $DB_ICATUSER_USERNAME;
GRANT CREATE JOB TO $DB_ICATUSER_USERNAME;

exit
EOF

#
# - the end -
#