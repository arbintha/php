BEGIN
    DBMS_SCHEDULER.create_job (
        job_name        => 'SYNC_EXCEL_DATA_JOB',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN sync_excel_data; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; BYHOUR=20; BYMINUTE=0; BYSECOND=0',
        enabled         => TRUE
    );
END;
/
