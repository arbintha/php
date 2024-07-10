CREATE OR REPLACE PROCEDURE sync_excel_data IS
BEGIN
    -- Table1
    MERGE INTO table1 t
    USING (SELECT * FROM ext_table1) e
    ON (t.id = e.id)
    WHEN MATCHED THEN
        UPDATE SET
            t.column1 = e.column1,
            t.column2 = e.column2
            -- Update other columns as needed
    WHEN NOT MATCHED THEN
        INSERT (id, column1, column2)
        VALUES (e.id, e.column1, e.column2);
        -- Insert other columns as needed

    -- Repeat for Table2
    MERGE INTO table2 t
    USING (SELECT * FROM ext_table2) e
    ON (t.id = e.id)
    WHEN MATCHED THEN
        UPDATE SET
            t.column1 = e.column1,
            t.column2 = e.column2
            -- Update other columns as needed
    WHEN NOT MATCHED THEN
        INSERT (id, column1, column2)
        VALUES (e.id, e.column1, e.column2);
        -- Insert other columns as needed

    -- Repeat for Table3
    MERGE INTO table3 t
    USING (SELECT * FROM ext_table3) e
    ON (t.id = e.id)
    WHEN MATCHED THEN
        UPDATE SET
            t.column1 = e.column1,
            t.column2 = e.column2
            -- Update other columns as needed
    WHEN NOT MATCHED THEN
        INSERT (id, column1, column2)
        VALUES (e.id, e.column1, e.column2);
        -- Insert other columns as needed
END sync_excel_data;
/
