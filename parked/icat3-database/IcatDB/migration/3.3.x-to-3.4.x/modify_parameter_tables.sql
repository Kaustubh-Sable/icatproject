ALTER TABLE DATASET_PARAMETER ADD DATETIME_VALUE TIMESTAMP(3);
COMMENT ON COLUMN DATASET_PARAMETER.DATETIME_VALUE IS 'To store date and time as parameter value.';

ALTER TABLE DATAFILE_PARAMETER ADD DATETIME_VALUE TIMESTAMP(3);
COMMENT ON COLUMN DATAFILE_PARAMETER.DATETIME_VALUE IS 'To store date and time as parameter';

ALTER TABLE SAMPLE_PARAMETER ADD DATETIME_VALUE TIMESTAMP(3);
COMMENT ON COLUMN SAMPLE_PARAMETER.DATETIME_VALUE IS 'To store date and time as a parameter value.';

COMMIT;