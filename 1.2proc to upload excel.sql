CREATE OR REPLACE DIRECTORY excel_dir AS '/path/to/csv/files';

-- External table for Sheet1 (Table1)
CREATE TABLE ext_table1 (
    ID NUMBER,
    COLUMN1 VARCHAR2(50),
    COLUMN2 VARCHAR2(50)
    -- Add other columns as needed
)
ORGANIZATION EXTERNAL (
    TYPE ORACLE_LOADER
    DEFAULT DIRECTORY excel_dir
    ACCESS PARAMETERS (
        RECORDS DELIMITED BY NEWLINE
        FIELDS TERMINATED BY ','
        MISSING FIELD VALUES ARE NULL
    )
    LOCATION ('sheet1.csv')
);

-- Repeat for the other two sheets (Table2 and Table3)
CREATE TABLE ext_table2 (
    ID NUMBER,
    COLUMN1 VARCHAR2(50),
    COLUMN2 VARCHAR2(50)
    -- Add other columns as needed
)
ORGANIZATION EXTERNAL (
    TYPE ORACLE_LOADER
    DEFAULT DIRECTORY excel_dir
    ACCESS PARAMETERS (
        RECORDS DELIMITED BY NEWLINE
        FIELDS TERMINATED BY ','
        MISSING FIELD VALUES ARE NULL
    )
    LOCATION ('sheet2.csv')
);

CREATE TABLE ext_table3 (
    ID NUMBER,
    COLUMN1 VARCHAR2(50),
    COLUMN2 VARCHAR2(50)
    -- Add other columns as needed
)
ORGANIZATION EXTERNAL (
    TYPE ORACLE_LOADER
    DEFAULT DIRECTORY excel_dir
    ACCESS PARAMETERS (
        RECORDS DELIMITED BY NEWLINE
        FIELDS TERMINATED BY ','
        MISSING FIELD VALUES ARE NULL
    )
    LOCATION ('sheet3.csv')
);
