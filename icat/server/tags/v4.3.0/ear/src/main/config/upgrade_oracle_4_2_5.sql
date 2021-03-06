ALTER TABLE APPLICATION ADD CONSTRAINT UNQ_APPLICATION_0 UNIQUE (FACILITY_ID, NAME, VERSION)
ALTER TABLE DATACOLLECTIONDATAFILE ADD CONSTRAINT UNQ_DATACOLLECTIONDATAFILE_0 UNIQUE (DATACOLLECTION_ID, DATAFILE_ID)
ALTER TABLE DATACOLLECTIONDATASET ADD CONSTRAINT UNQ_DATACOLLECTIONDATASET_0 UNIQUE (DATACOLLECTION_ID, DATASET_ID)
ALTER TABLE DATACOLLECTIONPARAMETER ADD CONSTRAINT UNQ_DATACOLLECTIONPARAMETER_0 UNIQUE (DATACOLLECTION_ID, PARAMETER_TYPE_ID)
ALTER TABLE DATAFILE ADD CONSTRAINT UNQ_DATAFILE_0 UNIQUE (DATASET_ID, NAME)
ALTER TABLE DATAFILEFORMAT ADD CONSTRAINT UNQ_DATAFILEFORMAT_0 UNIQUE (FACILITY_ID, NAME, VERSION)
ALTER TABLE DATAFILEPARAMETER ADD CONSTRAINT UNQ_DATAFILEPARAMETER_0 UNIQUE (DATAFILE_ID, PARAMETER_TYPE_ID)
ALTER TABLE DATASET ADD CONSTRAINT UNQ_DATASET_0 UNIQUE (INVESTIGATION_ID, NAME)
ALTER TABLE DATASETPARAMETER ADD CONSTRAINT UNQ_DATASETPARAMETER_0 UNIQUE (DATASET_ID, PARAMETER_TYPE_ID)
ALTER TABLE DATASETTYPE ADD CONSTRAINT UNQ_DATASETTYPE_0 UNIQUE (FACILITY_ID, NAME)
ALTER TABLE FACILITY ADD CONSTRAINT UNQ_FACILITY_0 UNIQUE (NAME)
ALTER TABLE FACILITYCYCLE ADD CONSTRAINT UNQ_FACILITYCYCLE_0 UNIQUE (FACILITY_ID, NAME)
ALTER TABLE GROUPING ADD CONSTRAINT UNQ_GROUPING_0 UNIQUE (NAME)
ALTER TABLE INSTRUMENT ADD CONSTRAINT UNQ_INSTRUMENT_0 UNIQUE (FACILITY_ID, NAME)
ALTER TABLE INSTRUMENTSCIENTIST ADD CONSTRAINT UNQ_INSTRUMENTSCIENTIST_0 UNIQUE (USER_ID, INSTRUMENT_ID)
ALTER TABLE INVESTIGATION ADD CONSTRAINT UNQ_INVESTIGATION_0 UNIQUE (FACILITY_ID, NAME, VISIT_ID)
ALTER TABLE INVESTIGATIONINSTRUMENT ADD CONSTRAINT UNQ_INVESTIGATIONINSTRUMENT_0 UNIQUE (INVESTIGATION_ID, INSTRUMENT_ID)
ALTER TABLE INVESTIGATIONPARAMETER ADD CONSTRAINT UNQ_INVESTIGATIONPARAMETER_0 UNIQUE (INVESTIGATION_ID, PARAMETER_TYPE_ID)
ALTER TABLE INVESTIGATIONTYPE ADD CONSTRAINT UNQ_INVESTIGATIONTYPE_0 UNIQUE (NAME, FACILITY_ID)
ALTER TABLE INVESTIGATIONUSER ADD CONSTRAINT UNQ_INVESTIGATIONUSER_0 UNIQUE (USER_ID, INVESTIGATION_ID)
ALTER TABLE KEYWORD ADD CONSTRAINT UNQ_KEYWORD_0 UNIQUE (NAME, INVESTIGATION_ID)
ALTER TABLE PARAMETERTYPE ADD CONSTRAINT UNQ_PARAMETERTYPE_0 UNIQUE (FACILITY_ID, NAME, UNITS)
ALTER TABLE PERMISSIBLESTRINGVALUE ADD CONSTRAINT UNQ_PERMISSIBLESTRINGVALUE_0 UNIQUE (VALUE, PARAMETERTYPE_ID)
ALTER TABLE PUBLICSTEP ADD CONSTRAINT UNQ_PUBLICSTEP_0 UNIQUE (ORIGIN, FIELD)
ALTER TABLE RELATEDDATAFILE ADD CONSTRAINT UNQ_RELATEDDATAFILE_0 UNIQUE (SOURCE_DATAFILE_ID, DEST_DATAFILE_ID)
ALTER TABLE SAMPLE ADD CONSTRAINT UNQ_SAMPLE_0 UNIQUE (INVESTIGATION_ID, NAME)
ALTER TABLE SAMPLEPARAMETER ADD CONSTRAINT UNQ_SAMPLEPARAMETER_0 UNIQUE (SAMPLE_ID, PARAMETER_TYPE_ID)
ALTER TABLE SAMPLETYPE ADD CONSTRAINT UNQ_SAMPLETYPE_0 UNIQUE (FACILITY_ID, NAME, MOLECULARFORMULA)
ALTER TABLE SHIFT ADD CONSTRAINT UNQ_SHIFT_0 UNIQUE (INVESTIGATION_ID, STARTDATE, ENDDATE)
ALTER TABLE STUDYINVESTIGATION ADD CONSTRAINT UNQ_STUDYINVESTIGATION_0 UNIQUE (STUDY_ID, INVESTIGATION_ID)
ALTER TABLE USER_ ADD CONSTRAINT UNQ_USER__0 UNIQUE (NAME)
ALTER TABLE USERGROUP ADD CONSTRAINT UNQ_USERGROUP_0 UNIQUE (USER_ID, GROUP_ID)
ALTER TABLE APPLICATION ADD CONSTRAINT FK_APPLICATION_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE DATACOLLECTIONDATAFILE ADD CONSTRAINT DTACOLLECTIONDATAFILEDTAFILEID FOREIGN KEY (DATAFILE_ID) REFERENCES DATAFILE (ID)
ALTER TABLE DATACOLLECTIONDATAFILE ADD CONSTRAINT DTCLLCTIONDATAFILEDTCLLCTIONID FOREIGN KEY (DATACOLLECTION_ID) REFERENCES DATACOLLECTION (ID)
ALTER TABLE DATACOLLECTIONDATASET ADD CONSTRAINT DTCLLCTIONDATASETDTCLLECTIONID FOREIGN KEY (DATACOLLECTION_ID) REFERENCES DATACOLLECTION (ID)
ALTER TABLE DATACOLLECTIONDATASET ADD CONSTRAINT DATACOLLECTIONDATASETDATASETID FOREIGN KEY (DATASET_ID) REFERENCES DATASET (ID)
ALTER TABLE DATACOLLECTIONPARAMETER ADD CONSTRAINT DTCLLCTIONPARAMETERPRMTRTYPEID FOREIGN KEY (PARAMETER_TYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE DATACOLLECTIONPARAMETER ADD CONSTRAINT DTCLLCTONPARAMETERDTCLLCTIONID FOREIGN KEY (DATACOLLECTION_ID) REFERENCES DATACOLLECTION (ID)
ALTER TABLE DATAFILE ADD CONSTRAINT FK_DATAFILE_DATAFILEFORMAT_ID FOREIGN KEY (DATAFILEFORMAT_ID) REFERENCES DATAFILEFORMAT (ID)
ALTER TABLE DATAFILE ADD CONSTRAINT FK_DATAFILE_DATASET_ID FOREIGN KEY (DATASET_ID) REFERENCES DATASET (ID)
ALTER TABLE DATAFILEFORMAT ADD CONSTRAINT FK_DATAFILEFORMAT_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE DATAFILEPARAMETER ADD CONSTRAINT DTAFILEPARAMETERPRAMETERTYPEID FOREIGN KEY (PARAMETER_TYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE DATAFILEPARAMETER ADD CONSTRAINT DATAFILEPARAMETER_DATAFILE_ID FOREIGN KEY (DATAFILE_ID) REFERENCES DATAFILE (ID)
ALTER TABLE DATASET ADD CONSTRAINT FK_DATASET_TYPE_ID FOREIGN KEY (TYPE_ID) REFERENCES DATASETTYPE (ID)
ALTER TABLE DATASET ADD CONSTRAINT FK_DATASET_INVESTIGATION_ID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE DATASET ADD CONSTRAINT FK_DATASET_SAMPLE_ID FOREIGN KEY (SAMPLE_ID) REFERENCES SAMPLE (ID)
ALTER TABLE DATASETPARAMETER ADD CONSTRAINT FK_DATASETPARAMETER_DATASET_ID FOREIGN KEY (DATASET_ID) REFERENCES DATASET (ID)
ALTER TABLE DATASETPARAMETER ADD CONSTRAINT DTASETPARAMETERPARAMETERTYPEID FOREIGN KEY (PARAMETER_TYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE DATASETTYPE ADD CONSTRAINT FK_DATASETTYPE_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE FACILITYCYCLE ADD CONSTRAINT FK_FACILITYCYCLE_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE INSTRUMENT ADD CONSTRAINT FK_INSTRUMENT_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE INSTRUMENTSCIENTIST ADD CONSTRAINT FK_INSTRUMENTSCIENTIST_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER_ (ID)
ALTER TABLE INSTRUMENTSCIENTIST ADD CONSTRAINT NSTRUMENTSCIENTISTINSTRUMENTID FOREIGN KEY (INSTRUMENT_ID) REFERENCES INSTRUMENT (ID)
ALTER TABLE INVESTIGATION ADD CONSTRAINT FK_INVESTIGATION_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE INVESTIGATION ADD CONSTRAINT FK_INVESTIGATION_TYPE_ID FOREIGN KEY (TYPE_ID) REFERENCES INVESTIGATIONTYPE (ID)
ALTER TABLE INVESTIGATIONINSTRUMENT ADD CONSTRAINT NVSTGTIONINSTRUMENTNVSTGTIONID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE INVESTIGATIONINSTRUMENT ADD CONSTRAINT NVSTGATIONINSTRUMENTNSTRMENTID FOREIGN KEY (INSTRUMENT_ID) REFERENCES INSTRUMENT (ID)
ALTER TABLE INVESTIGATIONPARAMETER ADD CONSTRAINT NVSTGATIONPARAMETERPRMTRTYPEID FOREIGN KEY (PARAMETER_TYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE INVESTIGATIONPARAMETER ADD CONSTRAINT NVSTGTIONPARAMETERNVSTGATIONID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE INVESTIGATIONTYPE ADD CONSTRAINT INVESTIGATIONTYPE_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE INVESTIGATIONUSER ADD CONSTRAINT NVESTIGATIONUSERNVESTIGATIONID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE INVESTIGATIONUSER ADD CONSTRAINT FK_INVESTIGATIONUSER_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER_ (ID)
ALTER TABLE JOB ADD CONSTRAINT FK_JOB_INPUTDATACOLLECTION_ID FOREIGN KEY (INPUTDATACOLLECTION_ID) REFERENCES DATACOLLECTION (ID)
ALTER TABLE JOB ADD CONSTRAINT FK_JOB_APPLICATION_ID FOREIGN KEY (APPLICATION_ID) REFERENCES APPLICATION (ID)
ALTER TABLE JOB ADD CONSTRAINT FK_JOB_OUTPUTDATACOLLECTION_ID FOREIGN KEY (OUTPUTDATACOLLECTION_ID) REFERENCES DATACOLLECTION (ID)
ALTER TABLE KEYWORD ADD CONSTRAINT FK_KEYWORD_INVESTIGATION_ID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE PARAMETERTYPE ADD CONSTRAINT FK_PARAMETERTYPE_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE PERMISSIBLESTRINGVALUE ADD CONSTRAINT PRMSSBLESTRINGVALUEPRMTRTYPEID FOREIGN KEY (PARAMETERTYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE PUBLICATION ADD CONSTRAINT PUBLICATION_INVESTIGATION_ID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE RELATEDDATAFILE ADD CONSTRAINT RELATEDDATAFILEDESTDATAFILE_ID FOREIGN KEY (DEST_DATAFILE_ID) REFERENCES DATAFILE (ID)
ALTER TABLE RELATEDDATAFILE ADD CONSTRAINT RLATEDDATAFILESOURCEDATAFILEID FOREIGN KEY (SOURCE_DATAFILE_ID) REFERENCES DATAFILE (ID)
ALTER TABLE RULE_ ADD CONSTRAINT FK_RULE__GROUPING_ID FOREIGN KEY (GROUPING_ID) REFERENCES GROUPING (ID)
ALTER TABLE SAMPLE ADD CONSTRAINT FK_SAMPLE_SAMPLETYPE_ID FOREIGN KEY (SAMPLETYPE_ID) REFERENCES SAMPLETYPE (ID)
ALTER TABLE SAMPLE ADD CONSTRAINT FK_SAMPLE_INVESTIGATION_ID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE SAMPLEPARAMETER ADD CONSTRAINT SAMPLEPARAMETERPARAMETERTYPEID FOREIGN KEY (PARAMETER_TYPE_ID) REFERENCES PARAMETERTYPE (ID)
ALTER TABLE SAMPLEPARAMETER ADD CONSTRAINT FK_SAMPLEPARAMETER_SAMPLE_ID FOREIGN KEY (SAMPLE_ID) REFERENCES SAMPLE (ID)
ALTER TABLE SAMPLETYPE ADD CONSTRAINT FK_SAMPLETYPE_FACILITY_ID FOREIGN KEY (FACILITY_ID) REFERENCES FACILITY (ID)
ALTER TABLE SHIFT ADD CONSTRAINT FK_SHIFT_INVESTIGATION_ID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE STUDY ADD CONSTRAINT FK_STUDY_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER_ (ID)
ALTER TABLE STUDYINVESTIGATION ADD CONSTRAINT FK_STUDYINVESTIGATION_STUDY_ID FOREIGN KEY (STUDY_ID) REFERENCES STUDY (ID)
ALTER TABLE STUDYINVESTIGATION ADD CONSTRAINT STDYINVESTIGATIONNVSTIGATIONID FOREIGN KEY (INVESTIGATION_ID) REFERENCES INVESTIGATION (ID)
ALTER TABLE USERGROUP ADD CONSTRAINT FK_USERGROUP_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER_ (ID)
ALTER TABLE USERGROUP ADD CONSTRAINT FK_USERGROUP_GROUP_ID FOREIGN KEY (GROUP_ID) REFERENCES GROUPING (ID)

