Insert into THIS_ICAT
   (FACILITY_SHORT_NAME, FACILITY_LONG_NAME, FACILITY_URL, FACILITY_DESCRIPTION, DAYS_UNTIL_PUBLIC_RELEASE, SEQ_NUMBER, MOD_ID, MOD_TIME, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('ISIS', 'For test purposes only', 'http://www.anon.ac.uk', 'ANON supports an international community of around 1600 scientists who use neutrons and muons for research in physics, chemistry, materials science, geology, engineering and biology', 1096, 999, 'damian', TO_TIMESTAMP('05/08/2008 14:12:49.0','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('05/08/2008 14:12:49.0','DD/MM/YYYY HH24:MI:SS.FF'), 'N', 'Y');


Insert into INSTRUMENT
   (NAME, SHORT_NAME, TYPE, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
Values
   ('MAPS', 'MAP', 'Excitations', '"Maps has changed the way the neutron community thinks about inelastic neutron scattering. Its huge array of position sensitive detectors has created a survey technique that is able to map vast areas of the Brillouin zone, making it possible to see the unexpected. It is able to reveal broad features which could easily be dismissed as background on a triple-axis machine.Computer model of Mas spectrometer The position sensitive detectors give near-continuous coverage over a large solid angle detector array in the forward direction. The pixel size in reciprocal space is significantly smaller than the resolution volume defined by the other instrumental contributions. In contrast, conventional detectors on Het and Mari integrate along one direction in reciprocal space, which overwhelms the intrinsic resolution in that direction. With MAPS there there is complete freedom to construct scans along any direction in reciprocal space and project data onto any plane in reciprocal space. Maps is optimised to measure high energy magnetic excitations in single crystals with varying energy resolution depending on choice of monochromating chopper."', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');

Insert into INSTRUMENT
   (NAME, SHORT_NAME, TYPE, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
Values
   ('CRISP', 'CSP', 'Large Scale Structures', '"CRISP Reflectometer. CRISP is one of two Neutron Reflectometers (NR) at ISIS. It is the original instrument and was designed for high resolution studies of a wide range of interfacial phenomena. The instrument is highly automated, allowing reproducible measurements to be made with high precision, and the sample geometry is horizontal to facilitate the study of liquid surfaces. CRISP, unlike its sister instrument SURF, can also perform polarised neutron reflectivity (PNR) measurements with full polarisation analysis. There is also overhead crane access for the installation of large items of sample environment."', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');


Insert into INVESTIGATION_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
Values
   ('experiment', 'A scientific experiment.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');

Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('experiment_raw', 'RAW data collected at the facility during an experiment.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
   
   
Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID, INV_ABSTRACT, INV_PARAM_NAME, INV_PARAM_VALUE, INV_START_DATE, FACILITY, FACILITY_CYCLE, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
Values
   (2, '32', '1', 'This is a test abstract','Run number range', '2300 - 2400', TO_TIMESTAMP('02/01/2007 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'ISIS', null, 'MAPS', 'SrF2 calibration  w=-25.3', 'experiment', '/CCW - / RAL', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID,  FACILITY, GRANT_ID, INV_ABSTRACT, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, '12345', '12', 'ISIS', 15, 'test abstract', 'MAPS', 'Test Investigation without any investigators', 'experiment', 'damian', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID, FACILITY, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (4, '1452', '153', 'ISIS', 'MAPS', 'Deleted Investigation', 'experiment', 'gjd37', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');

Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID, FACILITY, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (5, '1f452', '13', 'ISIS', 'CRISP', 'Test Investigation not FA', 'experiment', 'gjd37', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID,  FACILITY, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (6, '232323', 'ddd13', 'ISIS', 'MAPS', 'Test Investigation, not readable', 'experiment', 'gjdd37', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');

Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID, FACILITY, INSTRUMENT, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (7, '232323', 'deletable', 'ISIS', 'MAPS', 'Test Investigation deleable', 'experiment', 'gjdd37', TO_TIMESTAMP('02/01/2009 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');

Insert into INVESTIGATION
   (ID, INV_NUMBER, VISIT_ID, INV_START_DATE, INV_ABSTRACT, INV_PARAM_NAME, INV_PARAM_VALUE, FACILITY, INSTRUMENT, FACILITY_CYCLE, TITLE, INV_TYPE, BCAT_INV_STR, RELEASE_DATE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (8, '543', 'NT449-1', TO_TIMESTAMP('02/01/2008 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), 'This is a test abstract for the dataportal demo','Run number range', '2300 - 2400', 'ISIS', 'MAPS', null, 'Powder Diffraction 1459GPa', 'experiment', 'gjd37', TO_TIMESTAMP('02/01/2008 00:00:00.0','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:39:59.1','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('9932', 'dwf64', 'Mr', 'DW', 'Damian', 'Flannery', TO_TIMESTAMP('16/01/2007 11:16:55.1','DD/MM/YYYY HH24:MI:SS.FF'), 'JAMES', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('JAMES', 'JAMES-JAMES', 'Mr', 'JWH', 'JAMES', 'HEALY', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'JAMES', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Glen', 'gjd37', 'Mr', 'HJD', 'Glen', 'Drinkwater', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Steve', 'shk78', 'Mr', '', 'Steve', 'Kinder', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Tom', 'tang76', 'Mr', '', 'Tom', 'Griffin', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Testing User', 'test', 'Mr', '', 'Test', 'User', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Dan', 'djh37', 'Mr', 'DJH', 'Dan', 'Hanlon', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Dan', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('test_creator_investigation_facility_user', 'test_creator_investigation', 'Mr', 'Test', 'Test', 'creator', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Dan', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('test_admin_investigation_facility_user', 'test_admin_investigation', 'Mr', 'Test', 'Test', 'creator', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Dan', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into FACILITY_USER
   (FACILITY_USER_ID, FEDERAL_ID, TITLE, INITIALS, FIRST_NAME, LAST_NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   ('Test User', 'testfedId', 'Mr', '', 'Test', 'User', TO_TIMESTAMP('16/01/2007 09:00:15.2','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');


Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, '9932', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), '9932', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'JAMES', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'Tom', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'Steve', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'Glen', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'Dan', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Dan', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'Glen', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');
Insert into INVESTIGATOR
   (INVESTIGATION_ID, FACILITY_USER_ID, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'Testing User', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into PUBLICATION
   (ID, INVESTIGATION_ID, FULL_REFERENCE, URL, REPOSITORY_ID, REPOSITORY,  MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (1, 3, 'Deleted publication','http://publication','rep id','rep', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');

Insert into PUBLICATION
   (ID, INVESTIGATION_ID, FULL_REFERENCE, URL, REPOSITORY_ID, REPOSITORY,  MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 3, 'publication','http://publication','rep id','rep', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into PUBLICATION
   (ID, INVESTIGATION_ID, FULL_REFERENCE, URL, REPOSITORY_ID, REPOSITORY,  MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 3, 'fac acquired??','http://publication','rep id','rep', TO_TIMESTAMP('16/01/2007 09:00:17.7','DD/MM/YYYY HH24:MI:SS.FF'), 'Glen', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into DATASET_TYPE
   (NAME, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('GQ', 'Gemini Quantel', 999, TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.5','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');

   

--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD,  MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (1, 'gjd37', 'CREATOR', 'INVESTIGATION', 2,  null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,   USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (2, 'shk78', 'CREATOR', 'INVESTIGATION', 2,  null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,   USER_CHILD_RECORD, MOD_TIME, MOD_ID,CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (3, 'djh37', 'CREATOR', 'INVESTIGATION', 2,  null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD,  MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (4,  'dwf64', 'CREATOR', 'INVESTIGATION', 2,  null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,   USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (5, 'tang76', 'CREATOR', 'INVESTIGATION', 2,  null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (220,  'gjd37', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 2,  1, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (222,  'gjd37', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (223,  'gjd37', 'CREATOR', 'INVESTIGATION', null, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (7,  'shk78', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (8,  'djh37', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (9,  'dwf64', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (10,  'tang76', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (21, 'test', 'CREATOR', 'INVESTIGATION', 2,  null, null, null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (22, 'test', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (60, 'test', 'CREATOR', 'INVESTIGATION', 3, null, null, 79, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (25, 'test', 'READER', 'INVESTIGATION', 4,  null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (26, 'test', 'CREATOR', 'DATASET', 3, 'INVESTIGATION', 3, 81, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (79, 'test', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (72,  'ANY', 'READER', 'INVESTIGATION', 5, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (28, 'test_reader', 'READER', 'INVESTIGATION', 3, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (29, 'test_admin', 'ADMIN', 'INVESTIGATION', 3, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (30, 'test_deleter', 'DELETER', 'INVESTIGATION', 3,null, null, null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (31, 'test_downloader', 'DOWNLOADER', 'INVESTIGATION', 3, null, null,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (32, 'test_updater', 'UPDATER', 'INVESTIGATION', 3, null, null,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (45, 'test_creator', 'CREATOR', 'INVESTIGATION', 3, null, null,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (54, 'test_icatadmin', 'ICAT_ADMIN', 'INVESTIGATION', 3, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (84, 'test_icatadmin', 'ICAT_ADMIN', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (68, 'test_reader', 'READER', 'INVESTIGATION', 5, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (61, 'test_admin', 'ADMIN', 'INVESTIGATION', 5, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (62, 'test_deleter', 'DELETER', 'INVESTIGATION', 5,null, null, null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (63, 'test_downloader', 'DOWNLOADER', 'INVESTIGATION', 5, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (64, 'test_updater', 'UPDATER', 'INVESTIGATION', 5, null, null,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (65, 'test_creator', 'CREATOR', 'INVESTIGATION', 5, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (66, 'test_icatadmin', 'ICAT_ADMIN', 'INVESTIGATION', 5, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (47,  'test_creator', 'CREATOR', 'INVESTIGATION', null, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (48,  'test_reader', 'READER', 'INVESTIGATION', null, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (49,  'test_updater', 'UPDATER', 'INVESTIGATION', null, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (50,  'test_downloader', 'DOWNLOADER', 'INVESTIGATION', null, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (51,  'test_admin', 'ADMIN', 'INVESTIGATION', null, null, null, null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (52,  'test_deleter', 'DELETER', 'INVESTIGATION', null, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (53,  'test_icatadmin', 'ICAT_ADMIN', 'INVESTIGATION', null, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (33, 'test_reader', 'READER', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (34, 'test_admin', 'ADMIN', 'DATASET', 3, 'INVESTIGATION', 3,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (35, 'test_deleter', 'DELETER', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (36, 'test_downloader', 'DOWNLOADER', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (37, 'test_updater', 'UPDATER', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (44, 'test_creator', 'CREATOR', 'DATASET', 3, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (96, 'test_reader', 'READER', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (97, 'test_admin', 'ADMIN', 'DATASET', null, 'INVESTIGATION', 3,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (98, 'test_deleter', 'DELETER', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (99, 'test_downloader', 'DOWNLOADER', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (89, 'test_updater', 'UPDATER', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (88, 'test_creator', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (67, 'test_icatadmin', 'ICAT_ADMIN', 'DATASET', null, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (224, 'dwf64', 'CREATOR', 'INVESTIGATION', NULL,  NULL, NULL,  systimestamp, 'dwf64', systimestamp, 'dwf64', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (225, 'vtw67827', 'CREATOR', 'INVESTIGATION', NULL,  NULL, NULL,  systimestamp, 'dwf64', systimestamp, 'dwf64', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (90, 'test_reader', 'READER', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (91, 'test_admin', 'ADMIN', 'DATASET', 5, 'INVESTIGATION', 3,null,  systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (92, 'test_deleter', 'DELETER', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (93, 'test_downloader', 'DOWNLOADER', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (94, 'test_updater', 'UPDATER', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (95, 'test_creator', 'CREATOR', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (75, 'test_icatadmin', 'ICAT_ADMIN', 'DATASET', 5, 'INVESTIGATION', 3, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (230, 'ALL', 'READER', 'INVESTIGATION', 2, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (231, 'ALL', 'READER', 'INVESTIGATION', 3, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID, USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (232, 'ALL', 'READER', 'INVESTIGATION', 7, null, null,null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (233,  'ALL', 'CREATOR', 'DATASET', 6, 'INVESTIGATION', 7,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (234,  'ALL', 'CREATOR', 'DATASET', 2, 'INVESTIGATION', 2,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (235,  'ALL', 'CREATOR', 'DATASET', 3, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (236,  'ALL', 'READER', 'DATASET', 5, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (237,  'ALL', 'READER', 'DATASET', 4, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
----SUPER USER
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (240,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 2, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (241,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 3, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (242,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 4, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (243,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 5, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (244,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 6, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (245,  'SUPER_USER', 'ICAT_ADMIN', 'INVESTIGATION', 7, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (246,  'SUPER_USER', 'ICAT_ADMIN', 'DATASET', 2, 'INVESTIGATION', 2,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (247,  'SUPER_USER', 'ICAT_ADMIN', 'DATASET', 3, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (248,  'SUPER_USER', 'ICAT_ADMIN', 'DATASET', 4, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (249,  'SUPER_USER', 'ICAT_ADMIN', 'DATASET', 5, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (250,  'SUPER_USER', 'ICAT_ADMIN', 'DATASET', 6, 'INVESTIGATION', 7,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
---- Facility Scientist
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (251,  'facility_scientist', 'READER', 'INVESTIGATION', 3, null, null,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (252,  'facility_scientist', 'READER', 'DATASET', 3, 'INVESTIGATION', 3,  null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--
--
----  DLS Users for Investigation 8 --
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (260,  'wcap93', 'CREATOR', 'INVESTIGATION', 8, null, null, 261, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (261,  'wcap93', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 8, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (262,  'awa25', 'CREATOR', 'INVESTIGATION', 8, null, null, 263, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (263,  'awa25', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 8, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (264,  'zjt21856', 'CREATOR', 'INVESTIGATION', 8, null, null, 265, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (265,  'zjt21856', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 8, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (266,  'cnp64921', 'CREATOR', 'INVESTIGATION', 8, null, null, 267, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (267,  'cnp64921', 'CREATOR', 'DATASET', null, 'INVESTIGATION', 8, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');
--Insert into ICAT_AUTHORISATION 
--  (ID,  USER_ID, ROLE,  ELEMENT_TYPE, ELEMENT_ID, PARENT_ELEMENT_TYPE, PARENT_ELEMENT_ID,  USER_CHILD_RECORD, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED)
-- Values 
--    (268,  'gjd37', 'CREATOR', 'INVESTIGATION', 8, null, null, null, systimestamp, 'glen', systimestamp, 'glen', 'N','Y');



Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, '(00l)', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, '1989', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'calibration', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'ccw', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'ccwilson', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'harwell', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'jgoff', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'position', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'ral', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'shull', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'srf2', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'MAPS', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'MAPS01064.raw', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'MAPS01256.raw', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'MAPS01300.raw', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'w=-25.3', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'shull', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'deleted keyword', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (7, 'silly keyword', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');
Insert into KEYWORD
   (INVESTIGATION_ID, NAME, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (8, 'dls', TO_TIMESTAMP('02/01/2007 11:40:13.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');



Insert into SAMPLE
   (ID, INVESTIGATION_ID, NAME, SAFETY_INFORMATION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 2, 'SrF2 calibration  w=-25.3', '0', TO_TIMESTAMP('02/01/2007 11:44:00.4','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into SAMPLE
   (ID, INVESTIGATION_ID, NAME, SAFETY_INFORMATION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 3, 'SrF2 calibration  w=-25.3', '0', TO_TIMESTAMP('02/01/2007 11:44:00.4','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');
Insert into SAMPLE
   (ID, INVESTIGATION_ID, NAME, SAFETY_INFORMATION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (4, 3, 'Deleted sample', '0', TO_TIMESTAMP('02/01/2007 11:44:00.4','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');

   
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('total_proton_charge', 'uAmp hours', 'uAmp hours', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
 
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('good_frames', 'pulses', 'pulses', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
 
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('good_proton_charge', 'uAmp hours', 'uAmp hours', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('monitor_sum1', 'neutrons', 'neutrons', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('monitor_sum2', 'neutrons', 'neutrons', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('monitor_sum3', 'neutrons', 'neutrons', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('notes', 'N/A', 'N/A', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('number_of_periods', 'decimal', 'decimal', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('number_of_spectra', 'decimal', 'decimal', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('number_of_time_channels', 'decimal', 'decimal', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('run_duration', 'seconds', 'seconds', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('run_header', 'N/A', 'N/A', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, DESCRIPTION, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('run_number', 'N/A', 'Y', 'Y', 'U', 'U', 'Y', 'Other possible name : shot_number', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.6','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('finish_date', 'yyyy-MM-dd HH:mm:ss', 'yyyy-MM-dd HH:mm:ss', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'),'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('run_number', 'decimal', 'decimal', 'Y', 'Y', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:25:15.9','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('run_title', 'N/A', 'N/A', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('short_title', 'N/A', 'N/A', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('start_date', 'yyyy-MM-dd HH:mm:ss', 'yyyy-MM-dd HH:mm:ss', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID,  MOD_TIME, CREATE_TIME, CREATE_ID, DELETED, FACILITY_ACQUIRED, VERIFIED)
 Values
   ('time_channel_parameters', 'N/A', 'N/A', 'Y', 'N', 'U', 'U', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'N', 'Y', 'Y');



Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('sample_state', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('sample_situation', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('nexus_version', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('hdf_version', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('program_version', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('program_name', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('start_time', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('end_time', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('duration', 'second', 'second', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('switching_states', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('sample_temperature_setting', 'Kelvin', 'Kelvin', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('sample_magnetic_field_setting', 'Gauss', 'Gauss', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('sample_magnetic_field_state', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('detector_orientation', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('collimator_type', 'N/A', 'N/A', 'Y', 'N', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('source_total_count', 'Mev', 'Mev', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('source_daereads', 'N/A', 'N/A', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('source_frames', 'N/A', 'N/A', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('data_avg_counts', 'counts', 'counts', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('data_std_counts', 'counts', 'counts', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('histogram_resolution', 'picoseconds', 'picoseconds', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');

Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('time_zero', 'microseconds', 'microseconds', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');

Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('temperature_avg', 'Kelvin', 'Kelvin', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');


Insert into PARAMETER
   (NAME, UNITS, UNITS_LONG_VERSION, SEARCHABLE, NUMERIC_VALUE, IS_SAMPLE_PARAMETER, IS_DATASET_PARAMETER, IS_DATAFILE_PARAMETER, MOD_ID, MOD_TIME, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED, VERIFIED)
 Values
   ('temperature_std', 'Kelvin', 'Kelvin', 'Y', 'Y', 'Y', 'Y', 'Y', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:32:57.5','DD/MM/YYYY HH24:MI:SS.FF'), TO_TIMESTAMP('02/01/2007 11:25:14.7','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'Y', 'N', 'Y');
  

Insert into SAMPLE_PARAMETER
   (SAMPLE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'total_proton_charge', 'uAmp hours', '89.6272', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'N');
Insert into SAMPLE_PARAMETER
   (SAMPLE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (4, 'total_proton_charge', 'uAmp hours', '89.6272', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'N');

   
Insert into DATASET_STATUS
   (NAME, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
 Values
   ('complete', 999, TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.6','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
   

Insert into DATASET
   (ID, SAMPLE_ID, INVESTIGATION_ID, NAME, DATASET_TYPE, DATASET_STATUS, DESCRIPTION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 2, 2, 'Default', 'experiment_raw', 'complete', 'These files were processed retrospectively using application ''writeRaw'' v1.6'' on Tue Apr 25 00:56:38 2006', TO_TIMESTAMP('02/01/2007 11:44:18.6','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATASET
   (ID, SAMPLE_ID, INVESTIGATION_ID, NAME, DATASET_TYPE, DATASET_STATUS, DESCRIPTION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 3, 3, 'Dataset Default', 'experiment_raw', 'complete', 'These files were processed retrospectively using application ''writeRaw'' v1.6'' on Tue Apr 25 00:56:38 2006', TO_TIMESTAMP('02/01/2007 11:44:18.6','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');
Insert into DATASET
   (ID, SAMPLE_ID, INVESTIGATION_ID, NAME, DATASET_TYPE, DATASET_STATUS, DESCRIPTION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (4, 3, 3, 'Dataset Deleted', 'experiment_raw', 'complete', 'deleted dataset', TO_TIMESTAMP('02/01/2007 11:44:18.6','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'Y');
Insert into DATASET
   (ID, SAMPLE_ID, INVESTIGATION_ID, NAME, DATASET_TYPE, DATASET_STATUS, DESCRIPTION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (5, 3, 3, 'Dataset FA', 'experiment_raw', 'complete', ' dataset', TO_TIMESTAMP('02/01/2007 11:44:18.6','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATASET
   (ID, SAMPLE_ID, INVESTIGATION_ID, NAME, DATASET_TYPE, DATASET_STATUS, DESCRIPTION, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (6, null, 7, 'Dataset deletable', 'experiment_raw', 'complete', ' dataset', TO_TIMESTAMP('02/01/2007 11:44:18.6','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into DATASET_PARAMETER
   (DATASET_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'good_frames', 'pulses', 189541, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');


Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, DESCRIPTION, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
Values
   ('nexus', '3.0.0', 'HDF5', 'Neutron and X-Ray data format.', 999, TO_TIMESTAMP('12/09/2007 13:30:16.4','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:30:16.4','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');
Insert into DATAFILE_FORMAT
   (NAME, VERSION, FORMAT_TYPE, SEQ_NUMBER, MOD_TIME, MOD_ID, CREATE_TIME, CREATE_ID, FACILITY_ACQUIRED, DELETED)
Values
   ('isis neutron raw v8', '8', 'binary', 999, TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', TO_TIMESTAMP('12/09/2007 13:48:41.7','DD/MM/YYYY HH24:MI:SS.FF'), 'damian', 'Y', 'N');


Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION, LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 2, 'MAPS01064.RAW', 'SrF2 calibration w=-25.3', 'file://d', 2430976, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 2, 'MAPS01256.RAW', 'SrF2 calibration (00l)', 'file://d', 6024704, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 2, 'MAPS01300.RAW', 'SrF2 position calibration', 'file://d', 3169280, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE
   (ID, DATASET_ID, NAME,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (17434, 2, 'MAPS01300.LOG','file://d', 227, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, DATAFILE_CREATE_TIME, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 3, 'MAPS015554.RAW', 'SrF3 calibration w=-288.3', 'file://d', 345, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), systimestamp, 'N', 'N');
Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,   LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (57, 3, 'MAPS0155.RAW', 'SrF3 calibration (1100l)', 'file://d', 6000000, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (56, 3, 'deleted.RAW', 'SrF3 calibration (1100l)','file://d', 6000, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'Y', 'N');

Insert into DATAFILE
   (ID, DATASET_ID, NAME, DESCRIPTION,  LOCATION, FILE_SIZE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (60, 6, 'deletable.RAW', 'SrF3 calibration (1100l)','file://d', 6000, TO_TIMESTAMP('02/01/2007 11:44:45.8','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');


Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'good_proton_charge', 'uAmp hours', '389.443', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'monitor_sum1', 'neutrons', 119262801, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'monitor_sum2', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'monitor_sum3', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'notes', 'N/A', '138', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'number_of_periods', 'decimal', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'number_of_spectra', 'decimal', 4100, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'number_of_time_channels', 'decimal', 137, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'run_duration', 'seconds', 5322, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'run_header', 'N/A', 'MAPS01064                /CCWSrF2 calibration  w=-25. 8-MAY-1989 08:40:05   389.4', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'run_number', 'decimal', 1064, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'run_title', 'N/A', 'SrF2 calibration  w=-25.3', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'short_title', 'N/A', 'SrF2 calibration  w=-25.', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'start_date', 'yyyy-MM-dd HH:mm:ss', '1989-05- 8 08:40:05', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'time_channel_parameters', 'N/A', '1800 7000 0.01', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (2, 'total_proton_charge', 'uAmp hours', '389.445', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'total_proton_charge', 'uAmp hours', '389.445', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'N');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (3, 'run_number', 'decimal', 1064, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');



Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'good_frames', 'pulses', 1185970, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'good_proton_charge', 'uAmp hours', '24.9172', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'monitor_sum1', 'neutrons', 12679, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'monitor_sum2', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'monitor_sum3', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'notes', 'N/A', '357', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'number_of_periods', 'decimal', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'number_of_spectra', 'decimal', 4100, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'number_of_time_channels', 'decimal', 356, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'run_duration', 'seconds', 1234, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'run_header', 'N/A', 'MAPS01256SHull/JGoff/CCWilsonSrF2 calibration (00l)  12-SEP-1989 08:13:09    24.9', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'run_number', 'decimal', 1256, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'run_title', 'N/A', 'SrF2 calibration (00l)', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'short_title', 'N/A', 'SrF2 calibration (00l)', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'start_date', 'yyyy-MM-dd HH:mm:ss', '1989-09-12 08:13:09', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'time_channel_parameters', 'N/A', '1000 12000 0.007', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (58, 'total_proton_charge', 'uAmp hours', '24.9172', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');

Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'good_frames', 'pulses', 167033, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'good_proton_charge', 'uAmp hours', '89.6272', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'monitor_sum1', 'neutrons', 1031, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'monitor_sum2', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'monitor_sum3', 'neutrons', 0, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'notes', 'N/A', '183', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'number_of_periods', 'decimal', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'number_of_spectra', 'decimal', 4100, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'number_of_time_channels', 'decimal', 182, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'run_duration', 'seconds', 3627, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'run_header', 'N/A', 'MAPS01300                /ccwSrF2 position calibratio 2-OCT-1989 07:16:12    89.6', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, NUMERIC_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'run_number', 'decimal', 1300, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'run_title', 'N/A', 'SrF2 position calibration', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'short_title', 'N/A', 'SrF2 position calibratio', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'start_date', 'yyyy-MM-dd HH:mm:ss', '1989-10- 2 07:16:12', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'time_channel_parameters', 'N/A', '1800 7000 0.0075', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');
Insert into DATAFILE_PARAMETER
   (DATAFILE_ID, NAME, UNITS, STRING_VALUE, MOD_TIME, MOD_ID, CREATE_ID, CREATE_TIME, DELETED, FACILITY_ACQUIRED)
 Values
   (81, 'total_proton_charge', 'uAmp hours', '89.6272', TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', 'FIRST PROPAGATION', systimestamp, 'N', 'Y');


Insert into FACILITY_INSTRUMENT_SCIENTIST Values
  ('MAPS', 'facility_scientist', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', systimestamp, 'FIRST PROPAGATION', 'N', 'N');
Insert into FACILITY_INSTRUMENT_SCIENTIST Values
  ('CRISP', 'none_facility_scientist', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', systimestamp, 'FIRST PROPAGATION', 'N', 'N');
Insert into FACILITY_INSTRUMENT_SCIENTIST Values
  ('MAPS', 'deleted_facility_scientist', 1, TO_TIMESTAMP('02/01/2007 11:52:56.3','DD/MM/YYYY HH24:MI:SS.FF'), 'FIRST PROPAGATION', systimestamp, 'FIRST PROPAGATION', 'N', 'Y');

commit;

