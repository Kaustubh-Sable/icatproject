


Insert into INVESTIGATION_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('calibration', 'A set of Calibration', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into INVESTIGATION_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('commercial_experiment', 'A scientific experiment performed by a commercial company', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into INVESTIGATION_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('engineering', '"Calibration, first light data, alignment"', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');

Insert into INVESTIGATION_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('test', 'Test investigation', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into INVESTIGATION_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('unknown', 999, TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into INVESTIGATION_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('simulation', 999, TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into INVESTIGATION_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('measurement', 999, TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.8','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');




Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('experiment_cal', 'RAW data collected at the facility during a calibration run.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('experiment_eng', 'RAW data collected at the facility during a engineering test.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('laser_shot', 'CLF specific data related to the high power end of the Laser monitoring.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('reduced', 'Reduced Data', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('sample/target', 'Dataset containing information about a sample/target', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('simulation', 'Simulation data', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('source_monitoring', 'Data from the monitoring of the Light Source (neutron/X-ray/Laser)', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('special_cal', '"Calibration data not acquired through the normal Data acquisition system. (single detector calibration, �)"', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'FROM SPREADSHEET', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('special_user', 'User data uploaded into the system', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('unkown', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('raw', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('processed', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_TYPE
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('etc', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');


Insert into DATASET_STATUS
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('empty', 'No data available. Only the metadata available.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_STATUS
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('unknown', 999, TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_STATUS
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('incomplete', 999, TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATASET_STATUS
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('under review', 999, TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');


Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('isis muon raw v4', '4', 'binary', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('nexus', '1', 'binary', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('nexus', '2.1.0', 'HDF5', 'ISIS Muon format', 999, TO_TIMESTAMP('13/11/2007 10:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'tang76', TO_TIMESTAMP('13/11/2007 10:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'tang76', 'Y', 'N');
Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('isis neutron raw', '2', 'binary', 999, TO_TIMESTAMP('17/10/2007 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('17/10/2007 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');

 
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, MIDDLE_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('9932', 'damian', 'Mr', 'D', 'Damian', '', 'Flannery', TO_TIMESTAMP('09/10/2007 09:08:29.0','DD/MM/YYYY HH24:MI:SS.FF'), 'overlord', TO_TIMESTAMP('09/10/2007 09:08:29.0','DD/MM/YYYY HH24:MI:SS.FF'), 'overlord', 'Y', 'N');

Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, MIDDLE_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('9933', 'doug', 'Mr', 'D', 'Doug', '', 'Du Boulay', TO_TIMESTAMP('09/10/2007 09:08:29.0','DD/MM/YYYY HH24:MI:SS.FF'), 'overlord', TO_TIMESTAMP('09/10/2007 09:08:29.0','DD/MM/YYYY HH24:MI:SS.FF'), 'overlord', 'Y', 'N');


COMMIT;

