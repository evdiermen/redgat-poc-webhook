CREATE TABLE hr.hr_evd_test_et (
  "ID" VARCHAR2(255 BYTE),
  description VARCHAR2(255 BYTE),
  darwin VARCHAR2(255 BYTE),
  dataareaid VARCHAR2(255 BYTE),
  recversion VARCHAR2(255 BYTE),
  recid VARCHAR2(255 BYTE)
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY EVD_DIR
ACCESS PARAMETERS (
records delimited by NEWLINE
         logfile 'WKArticleBrand_ET.log'
         badfile 'WKArticleBrand_ET.bad'
         skip 1
         FIELDS TERMINATED BY ';'
         OPTIONALLY ENCLOSED BY '"'
         MISSING FIELD VALUES ARE NULL
       (
         id           CHAR(255),
         description  CHAR(255)
         darwin       CHAR(255)
         dataareaid   CHAR(255),
         recversion   CHAR(255),
         recid        CHAR(255)
       )
)
LOCATION ('test.csv'))
REJECT LIMIT UNLIMITED;