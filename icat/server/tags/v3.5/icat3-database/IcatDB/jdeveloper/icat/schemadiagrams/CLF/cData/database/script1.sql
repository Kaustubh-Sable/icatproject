CREATE TABLE SHOT_LIST
(
ID NUMBER NOT NULL,
SHOT_DATE DATE NOT NULL,
SHOT_TYPE VARCHAR2(4000) NOT NULL,
SHOT_NUMBER INTEGER NOT NULL,
SHOT_TIME TIMESTAMP,
INVESTIGATION_ID NUMBER
)
;

CREATE TABLE SHOT_TYPE_LIST
(
SHOT_TYPE VARCHAR2(32 CHAR) DEFAULT 'GEMINI-SHOT' NOT NULL,
TYPE_NAME VARCHAR2(4000),
RESTRICTED CHARACTER(5) DEFAULT 'FALSE' NOT NULL,
LASER VARCHAR2(32)
)
;

CREATE TABLE DS_FLOAT
(
SHOT_ID NUMBER NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
DATA FLOAT,
NOTE VARCHAR2(256)
)
;

CREATE TABLE CHANNEL
(
ID NUMBER NOT NULL,
SECTION_1 VARCHAR2(32) NOT NULL,
SECTION_2 VARCHAR2(32),
SECTION_3 VARCHAR2(32),
CHANNEL VARCHAR2(4000) NOT NULL,
START_VALIDITY TIMESTAMP,
END_VALIDITY TIMESTAMP
)
;

CREATE TABLE DATASTREAM
(
ID NUMBER NOT NULL,
CHANNEL_ID NUMBER NOT NULL,
DATASTREAM_NAME VARCHAR2(32) NOT NULL,
DATASTREAM_TYPE VARCHAR2(32) NOT NULL,
SHOT_TYPE VARCHAR2(32) NOT NULL,
DATASTREAM_UNITS VARCHAR2(32),
AXIS_UNITS VARCHAR2(32),
COMMENTS VARCHAR2(4000),
START_VALIDITY TIMESTAMP,
END_VALIDITY TIMESTAMP
)
;

CREATE TABLE USER_LIST
(
USER_NAME CHAR NOT NULL,
FED_ID VARCHAR2(4000) NOT NULL,
DN_STRING VARCHAR2(4000) NOT NULL
)
;

CREATE TABLE USER_SHOTTYPE
(
FED_ID VARCHAR2(4000) NOT NULL,
SHOT_TYPE VARCHAR2(32) NOT NULL,
"COMMENT" VARCHAR2(4000)
)
;

CREATE TABLE EXPERIMENT_LIST
(
INVESTIGATION_ID NUMBER NOT NULL,
TITLE VARCHAR2(4000),
DESCRIPTION VARCHAR2(4000),
START_DATE DATE,
END_DATE DATE
)
;

CREATE TABLE USER_EXPERIMENT
(
FED_ID VARCHAR2(4000) NOT NULL,
INVESTIGATION_ID NUMBER NOT NULL,
NOTE VARCHAR2(4000)
)
;

CREATE TABLE TARGET_LIST
(
TARGET_ID VARCHAR2(4000) NOT NULL,
TARGET_NAME VARCHAR2(4000),
SHOT_ID NUMBER
)
;

CREATE TABLE DS_INT
(
SHOT_ID NUMBER NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
DATA LONG NOT NULL,
NOTE VARCHAR2(256)
)
;

CREATE TABLE DAILY_FLOAT
(
TIME TIMESTAMP NOT NULL,
DATASTREAM_ID NUMBER,
DATA FLOAT,
NOTE VARCHAR2(256)
)
;

CREATE TABLE DAILY_STRING
(
TIME TIMESTAMP NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
DATA VARCHAR2(4000),
NOTE VARCHAR2(256)
)
;

CREATE TABLE CHANNEL_PARAMETER
(
ID NUMBER NOT NULL,
CHANNEL_ID NUMBER NOT NULL,
PARAMETER_NAME VARCHAR2(32) NOT NULL,
VALUE_STRING VARCHAR2(4000),
VALUE_FLOAT FLOAT,
UNITS VARCHAR2(32)
)
;

CREATE TABLE DATASTREAM_PARAMETER
(
ID NUMBER NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
PARAMETER_NAME VARCHAR2(32),
VALUE_STRING VARCHAR2(4000),
VALUE_FLOAT FLOAT,
UNITS VARCHAR2(32)
)
;

CREATE TABLE DS_STRING
(
SHOT_ID NUMBER NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
DATA VARCHAR2(4000) NOT NULL,
NOTE VARCHAR2(256)
)
;

CREATE TABLE TARGET_PARAMETER
(
ID NUMBER NOT NULL,
TARGET_ID VARCHAR2(4000) NOT NULL,
PARAMETER_NAME VARCHAR2(4000) NOT NULL,
VALUE_STRING VARCHAR2(4000),
VALUE_FLOAT FLOAT,
UNITS VARCHAR2(4000)
)
;

CREATE TABLE DAILY_INT
(
TIME TIMESTAMP NOT NULL,
DATASTREAM_ID NUMBER NOT NULL,
DATA FLOAT,
"COMMENT" VARCHAR2(256)
)
;

CREATE TABLE DERIVED_DATASTREAM
(
RAW_DATASTREAM NUMBER NOT NULL,
DERIVED_DATASTREAM NUMBER NOT NULL,
DERIVATION VARCHAR2(4000) DEFAULT 'INTEGRATION' NOT NULL,
CREATED_BY VARCHAR2(32) DEFAULT 'DAQ'
)
;

CREATE TABLE DATASTREAM_TYPE
(
TYPE VARCHAR2(32) NOT NULL,
TABLE_NAME VARCHAR2(4000),
NOTE VARCHAR2(4000)
)
;

ALTER TABLE SHOT_LIST
ADD CONSTRAINT SHOT_LIST_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE SHOT_LIST
ADD CONSTRAINT SHOT_LIST_UK1 UNIQUE
(
SHOT_DATE,
SHOT_TYPE,
SHOT_NUMBER
)
 ENABLE
;

ALTER TABLE SHOT_TYPE_LIST
ADD CONSTRAINT SHOT_TYPE_PK PRIMARY KEY
(
SHOT_TYPE
)
 ENABLE
;

ALTER TABLE DS_FLOAT
ADD CONSTRAINT DATRASTREAMS_PK PRIMARY KEY
(
SHOT_ID,
DATASTREAM_ID
)
 ENABLE
;

ALTER TABLE CHANNEL
ADD CONSTRAINT CHANNEL_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE CHANNEL
ADD CONSTRAINT CHANNEL_UK1 UNIQUE
(
SECTION_1,
SECTION_2,
SECTION_3,
CHANNEL,
START_VALIDITY
)
 ENABLE
;

ALTER TABLE DATASTREAM
ADD CONSTRAINT SECTION_1_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE DATASTREAM
ADD CONSTRAINT DATASTREAM_UK1 UNIQUE
(
DATASTREAM_NAME,
SHOT_TYPE,
START_VALIDITY
)
 ENABLE
;

ALTER TABLE USER_LIST
ADD CONSTRAINT USER_ID_PK PRIMARY KEY
(
FED_ID
)
 ENABLE
;

ALTER TABLE USER_SHOTTYPE
ADD CONSTRAINT USER_SHOTTYPE_PK PRIMARY KEY
(
FED_ID,
SHOT_TYPE
)
 ENABLE
;

ALTER TABLE EXPERIMENT_LIST
ADD CONSTRAINT EXPERIMENT_LIST_PK PRIMARY KEY
(
INVESTIGATION_ID
)
 ENABLE
;

ALTER TABLE USER_EXPERIMENT
ADD CONSTRAINT USER_EXPERIMENT_PK PRIMARY KEY
(
FED_ID,
INVESTIGATION_ID
)
 ENABLE
;

ALTER TABLE TARGET_LIST
ADD CONSTRAINT TARGET_LIST_PK PRIMARY KEY
(
TARGET_ID
)
 ENABLE
;

ALTER TABLE DS_INT
ADD CONSTRAINT TRACE_DATASTREAM_PK PRIMARY KEY
(
SHOT_ID,
DATASTREAM_ID
)
 ENABLE
;

ALTER TABLE DAILY_FLOAT
ADD CONSTRAINT DAILY_5MIN_PK PRIMARY KEY
(
TIME
)
 ENABLE
;

ALTER TABLE DAILY_STRING
ADD CONSTRAINT IMAGE_DATASTREAM_PK PRIMARY KEY
(
DATASTREAM_ID
)
 ENABLE
;

ALTER TABLE CHANNEL_PARAMETER
ADD CONSTRAINT CHANNEL_PARAMETER_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE DATASTREAM_PARAMETER
ADD CONSTRAINT DATASTREAM_PARAMETER_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE DS_STRING
ADD CONSTRAINT STRING_DATASTREAM_PK PRIMARY KEY
(
SHOT_ID,
DATASTREAM_ID
)
 ENABLE
;

ALTER TABLE TARGET_PARAMETER
ADD CONSTRAINT TARGET_PARAMETER_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE TARGET_PARAMETER
ADD CONSTRAINT TARGET_PARAMETER_UK1 UNIQUE
(
TARGET_ID,
PARAMETER_NAME
)
 ENABLE
;

ALTER TABLE DAILY_INT
ADD CONSTRAINT DAILY_MANUAL_PK PRIMARY KEY
(
TIME,
DATASTREAM_ID
)
 ENABLE
;

ALTER TABLE DERIVED_DATASTREAM
ADD CONSTRAINT DATASTREAM_RELATIONSHIP_PK PRIMARY KEY
(
RAW_DATASTREAM,
DERIVED_DATASTREAM
)
 ENABLE
;

ALTER TABLE DERIVED_DATASTREAM
ADD CONSTRAINT DERIVED_DATASTREAM_UK1 UNIQUE
(
RAW_DATASTREAM,
DERIVATION
)
 ENABLE
;

ALTER TABLE DATASTREAM_TYPE
ADD CONSTRAINT DATASTREAM_TYPE_PK PRIMARY KEY
(
TYPE
)
 ENABLE
;

ALTER TABLE SHOT_LIST
ADD CONSTRAINT SHOT_LIST_SHOT_TYPE_FK1 FOREIGN KEY
(
SHOT_TYPE
)
REFERENCES LL56.SHOT_TYPE_LIST
(
SHOT_TYPE
) ENABLE
;

ALTER TABLE SHOT_LIST
ADD CONSTRAINT SHOT_LIST_EXPERIMENT_LIST_FK1 FOREIGN KEY
(
INVESTIGATION_ID
)
REFERENCES LL56.EXPERIMENT_LIST
(
INVESTIGATION_ID
) ENABLE
;

ALTER TABLE DS_FLOAT
ADD CONSTRAINT FLOAT_DATASTREAMS_DATASTR_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DS_FLOAT
ADD CONSTRAINT DS_FLOAT_SHOT_LIST_FK1 FOREIGN KEY
(
SHOT_ID
)
REFERENCES LL56.SHOT_LIST
(
ID
) ENABLE
;

ALTER TABLE DATASTREAM
ADD CONSTRAINT DATASTREAM_CHANNEL_FK1 FOREIGN KEY
(
CHANNEL_ID
)
REFERENCES LL56.CHANNEL
(
ID
) ENABLE
;

ALTER TABLE DATASTREAM
ADD CONSTRAINT DATASTREAM_SHOT_TYPE_FK1 FOREIGN KEY
(
SHOT_TYPE
)
REFERENCES LL56.SHOT_TYPE_LIST
(
SHOT_TYPE
) ENABLE
;

ALTER TABLE DATASTREAM
ADD CONSTRAINT DATASTREAM_DATASTREAM_TYP_FK1 FOREIGN KEY
(
DATASTREAM_TYPE
)
REFERENCES DATASTREAM_TYPE
(
TYPE
) ENABLE
;

ALTER TABLE USER_SHOTTYPE
ADD CONSTRAINT USER_SHOTTYPE_USER_ID_FK1 FOREIGN KEY
(
FED_ID
)
REFERENCES LL56.USER_LIST
(
FED_ID
) ENABLE
;

ALTER TABLE USER_SHOTTYPE
ADD CONSTRAINT USER_SHOTTYPE_SHOT_TYPE_L_FK1 FOREIGN KEY
(
SHOT_TYPE
)
REFERENCES LL56.SHOT_TYPE_LIST
(
SHOT_TYPE
) ENABLE
;

ALTER TABLE USER_EXPERIMENT
ADD CONSTRAINT USER_EXPERIMENT_USER_ID_FK1 FOREIGN KEY
(
FED_ID
)
REFERENCES LL56.USER_LIST
(
FED_ID
) ENABLE
;

ALTER TABLE USER_EXPERIMENT
ADD CONSTRAINT USER_EXPERIMENT_EXPERIMEN_FK1 FOREIGN KEY
(
INVESTIGATION_ID
)
REFERENCES LL56.EXPERIMENT_LIST
(
INVESTIGATION_ID
) ENABLE
;

ALTER TABLE TARGET_LIST
ADD CONSTRAINT TARGET_LIST_SHOT_LIST_FK1 FOREIGN KEY
(
SHOT_ID
)
REFERENCES LL56.SHOT_LIST
(
ID
) ENABLE
;

ALTER TABLE DS_INT
ADD CONSTRAINT TRACE_DATASTREAM_DATASTRE_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DS_INT
ADD CONSTRAINT DS_TRACE_SHOT_LIST_FK1 FOREIGN KEY
(
SHOT_ID
)
REFERENCES LL56.SHOT_LIST
(
ID
) ENABLE
;

ALTER TABLE DAILY_FLOAT
ADD CONSTRAINT DAILY_FLOAT_DATASTREAM_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DAILY_STRING
ADD CONSTRAINT IMAGE_DATASTREAM_DATASTRE_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE CHANNEL_PARAMETER
ADD CONSTRAINT CHANNEL_PARAMETER_CHANNEL_FK1 FOREIGN KEY
(
CHANNEL_ID
)
REFERENCES LL56.CHANNEL
(
ID
) ENABLE
;

ALTER TABLE DATASTREAM_PARAMETER
ADD CONSTRAINT DATASTREAM_PARAMETER_DATA_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DS_STRING
ADD CONSTRAINT STRING_DATASTREAM_DATASTR_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DS_STRING
ADD CONSTRAINT STRING_DATASTREAM_SHOT_LI_FK1 FOREIGN KEY
(
SHOT_ID
)
REFERENCES LL56.SHOT_LIST
(
ID
) ENABLE
;

ALTER TABLE TARGET_PARAMETER
ADD CONSTRAINT TARGET_PARAMETER_TARGET_L_FK1 FOREIGN KEY
(
TARGET_ID
)
REFERENCES LL56.TARGET_LIST
(
TARGET_ID
) ENABLE
;

ALTER TABLE DAILY_INT
ADD CONSTRAINT DAILY_MANUAL_DATASTREAM_FK1 FOREIGN KEY
(
DATASTREAM_ID
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DERIVED_DATASTREAM
ADD CONSTRAINT DATASTREAM_RELATIONSHIP_D_FK1 FOREIGN KEY
(
RAW_DATASTREAM
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

ALTER TABLE DERIVED_DATASTREAM
ADD CONSTRAINT DATASTREAM_RELATIONSHIP_D_FK2 FOREIGN KEY
(
DERIVED_DATASTREAM
)
REFERENCES LL56.DATASTREAM
(
ID
) ENABLE
;

COMMENT ON TABLE SHOT_TYPE_LIST IS 'List of possible Shot TYpe.'
;

COMMENT ON TABLE USER_LIST IS 'List of CLF Users.   This should contain only the user-id. For the authentification, we would use other system that use the user_id stored here.   Details are to be defined.   '
;

COMMENT ON TABLE EXPERIMENT_LIST IS 'This table will contain the list of all experiment done at CLF. '
;

COMMENT ON TABLE DATASTREAM_TYPE IS 'Look up table that define the  datastream type available and the table that will hole the data.  '
;

COMMENT ON COLUMN SHOT_LIST.ID IS 'Unique key of SHOT_LIST. will be the foreign key of various table. I don''t know what format to give. Either a LONG or number or a CHAR(18)   It would be good if the key could be calculated from the basic shot_ information  like the  date (8 char) , type ( 2 char) and shot_number(8 character).    '
;

COMMENT ON COLUMN SHOT_LIST.INVESTIGATION_ID IS 'Only SDhots that have to be restricted needs to be attached to an investigation/experiment. '
;

COMMENT ON COLUMN SHOT_TYPE_LIST.SHOT_TYPE IS 'Two letter type :  GS : Gemini laser Shot GQ : Gemini Quantel shot GT : Gemini Target Area shot GD : Gemini Daily data ( not a shot really) ...'
;

COMMENT ON COLUMN SHOT_TYPE_LIST.TYPE_NAME IS 'Name of the SHOT_TYPE'
;

COMMENT ON COLUMN SHOT_TYPE_LIST.RESTRICTED IS 'Does that shot type need data access restriction? Laser diagnoistics are public data and does not need restriction, (FALSE) but the experiment data needs some restriction (TRUE)'
;

COMMENT ON COLUMN SHOT_TYPE_LIST.LASER IS 'Laser Name ( Astra-Gemini, Astra-Artemis, Vulcan, ...)'
;

COMMENT ON COLUMN DATASTREAM.DATASTREAM_TYPE IS 'This will contain the table name where the data has to be stored.  DS_STRING, DS_FLOAT, DS_TRACE, DS_IMAGE, DS_MANUAL,  DAILY_6SEC, DAILY_5MIN, ... all tables starting with DS_.. has similar structure. tables stating with DAILY have another structure with the DS_NAME as column name. '
;

COMMENT ON COLUMN DATASTREAM.AXIS_UNITS IS 'If of type trace.'
;

COMMENT ON COLUMN DS_STRING.DATASTREAM_ID IS 'Can be null. Which would means that the information is a generic comment on the shot'
;

COMMENT ON COLUMN DERIVED_DATASTREAM.DERIVATION IS 'CAlculation to be done to derive the datastream.  e.g. : MINIMUM, MAXIMUM, INTEGRATION, AVERAGE, ...'
;

COMMENT ON COLUMN DERIVED_DATASTREAM.CREATED_BY IS 'Name of the tools that''s supposed to be doing the derivation. e.g DAQ, rawDataReaders, ... '
;

