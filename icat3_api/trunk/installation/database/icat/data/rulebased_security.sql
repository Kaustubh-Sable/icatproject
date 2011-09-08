CREATE TABLE USERGROUP
  (
    NAME   VARCHAR2(255 BYTE) NOT NULL ,
    MEMBER VARCHAR2(255 BYTE) NOT NULL ,  
    MOD_TIME TIMESTAMP (1) NOT NULL ,
    CONSTRAINT USERGROUP_PK PRIMARY KEY (NAME, MEMBER)
  );
  
  CREATE TABLE RULE;
  (
    ID           NUMBER NOT NULL ,
    GROUP_NAME   VARCHAR2(255 BYTE),
    WHAT         VARCHAR2(255 BYTE),
    C            VARCHAR2(1 BYTE) NOT NULL ,
    R            VARCHAR2(1 BYTE) NOT NULL ,
    U            VARCHAR2(1 BYTE) NOT NULL ,
    D            VARCHAR2(1 BYTE) NOT NULL ,
    RESTRICTION  VARCHAR2(4000 BYTE),
    CRUD_JPQL    VARCHAR2(4000 BYTE),
    SEARCH_JPQL  VARCHAR2(4000 BYTE),
    BEANS        VARCHAR2(255 BYTE),
    MOD_TIME     TIMESTAMP (1) NOT NULL ,
    CONSTRAINT RULE_PK PRIMARY KEY (ID)
  );
  
  CREATE SEQUENCE RULE_ID_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;
  
  DROP TABLE ICAT_AUTHORISATION;
  DROP TABLE ICAT_ROLE;
  DROP SEQUENCE ICAT_AUTHORISATION_ID_SEQ;
  
  DROP TRIGGER AIR_INVESTIGATION_TRG;
  DROP TRIGGER AIR_DATASET_TRG;
  DROP TRIGGER INVESTIGATION_DATE_TRG;
  
  DELETE FROM APPLICATIONS WHERE DELETED = 'Y';
  DELETE FROM DATAFILE_FORMAT WHERE DELETED = 'Y';
  DELETE FROM DATAFILE_PARAMETER WHERE DELETED = 'Y';
  DELETE FROM DATAFILE WHERE DELETED = 'Y';
  DELETE FROM DATASET_PARAMETER WHERE DELETED = 'Y';
  DELETE FROM DATASET_STATUS WHERE DELETED = 'Y';
  DELETE FROM DATASET_TYPE WHERE DELETED = 'Y';
  DELETE FROM DATASET WHERE DELETED = 'Y';
  DELETE FROM FACILITY_CYCLE WHERE DELETED = 'Y';
  DELETE FROM FACILITY_INSTRUMENT_SCIENTIST WHERE DELETED = 'Y';
  DELETE FROM FACILITY_USER WHERE DELETED = 'Y';
  DELETE FROM INSTRUMENT WHERE DELETED = 'Y';
  DELETE FROM INVESTIGATION_TYPE WHERE DELETED = 'Y';
  DELETE FROM INVESTIGATION WHERE DELETED = 'Y';
  DELETE FROM INVESTIGATOR WHERE DELETED = 'Y';
  DELETE FROM KEYWORD WHERE DELETED = 'Y';
  DELETE FROM PARAMETER WHERE DELETED = 'Y';
  DELETE FROM PUBLICATION WHERE DELETED = 'Y';
  DELETE FROM RELATED_DATAFILES WHERE DELETED = 'Y';
  DELETE FROM SAMPLE_PARAMETER WHERE DELETED = 'Y';
  DELETE FROM SAMPLE WHERE DELETED = 'Y';
  DELETE FROM SHIFT WHERE DELETED = 'Y';
  DELETE FROM SOFTWARE_VERSION WHERE DELETED = 'Y';
  DELETE FROM STUDY_INVESTIGATION WHERE DELETED = 'Y';
  DELETE FROM STUDY_STATUS WHERE DELETED = 'Y';
  DELETE FROM STUDY WHERE DELETED = 'Y';
  DELETE FROM THIS_ICAT WHERE DELETED = 'Y';
  DELETE FROM TOPIC_LIST WHERE DELETED = 'Y';
  DELETE FROM TOPIC WHERE DELETED = 'Y';
  DELETE FROM USER_ROLES WHERE DELETED = 'Y';
 
  ALTER TABLE APPLICATIONS DROP COLUMN DELETED;
  ALTER TABLE DATAFILE DROP COLUMN DELETED;
  ALTER TABLE DATAFILE_FORMAT DROP COLUMN DELETED;
  ALTER TABLE DATAFILE_PARAMETER DROP COLUMN DELETED;
  ALTER TABLE DATASET DROP COLUMN DELETED;
  ALTER TABLE DATASET_PARAMETER DROP COLUMN DELETED;
  ALTER TABLE DATASET_STATUS DROP COLUMN DELETED;
  ALTER TABLE DATASET_TYPE DROP COLUMN DELETED;
  ALTER TABLE FACILITY_CYCLE DROP COLUMN DELETED;
  ALTER TABLE FACILITY_INSTRUMENT_SCIENTIST DROP COLUMN DELETED;
  ALTER TABLE FACILITY_USER DROP COLUMN DELETED;
  ALTER TABLE INSTRUMENT DROP COLUMN DELETED;
  ALTER TABLE INVESTIGATION DROP COLUMN DELETED;
  ALTER TABLE INVESTIGATION_TYPE DROP COLUMN DELETED;
  ALTER TABLE INVESTIGATOR DROP COLUMN DELETED;
  ALTER TABLE KEYWORD DROP COLUMN DELETED;
  ALTER TABLE PARAMETER DROP COLUMN DELETED;
  ALTER TABLE PUBLICATION DROP COLUMN DELETED;
  ALTER TABLE RELATED_DATAFILES DROP COLUMN DELETED;
  ALTER TABLE SAMPLE DROP COLUMN DELETED;
  ALTER TABLE SAMPLE_PARAMETER DROP COLUMN DELETED;
  ALTER TABLE SHIFT DROP COLUMN DELETED;
  ALTER TABLE SOFTWARE_VERSION DROP COLUMN DELETED;
  ALTER TABLE STUDY DROP COLUMN DELETED;
  ALTER TABLE STUDY_INVESTIGATION DROP COLUMN DELETED;
  ALTER TABLE STUDY_STATUS DROP COLUMN DELETED;
  ALTER TABLE THIS_ICAT DROP COLUMN DELETED;
  ALTER TABLE TOPIC DROP COLUMN DELETED;
  ALTER TABLE TOPIC_LIST DROP COLUMN DELETED;
  ALTER TABLE USER_ROLES DROP COLUMN DELETED;

  ALTER TABLE APPLICATIONS DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATAFILE DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATAFILE_FORMAT DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATAFILE_PARAMETER DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATASET DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATASET_PARAMETER DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATASET_STATUS DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE DATASET_TYPE DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE FACILITY_CYCLE DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE FACILITY_INSTRUMENT_SCIENTIST DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE FACILITY_USER DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE INSTRUMENT DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE INVESTIGATION DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE INVESTIGATION_TYPE DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE INVESTIGATOR DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE KEYWORD DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE PARAMETER DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE PUBLICATION DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE RELATED_DATAFILES DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE SAMPLE DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE SAMPLE_PARAMETER DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE SHIFT DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE SOFTWARE_VERSION DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE STUDY DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE STUDY_INVESTIGATION DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE STUDY_STATUS DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE THIS_ICAT DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE TOPIC DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE TOPIC_LIST DROP COLUMN FACILITY_ACQUIRED;
  ALTER TABLE USER_ROLES DROP COLUMN FACILITY_ACQUIRED;
