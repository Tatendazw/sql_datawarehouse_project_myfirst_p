/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
===============================================================================
*/

IF OBJECT_ID('Bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE Bronze.crm_cust_info;
GO

CREATE TABLE Bronze.crm_cust_info (
    cst_id              INT,
    cst_key             NVARCHAR(MAX),
    cst_firstname       NVARCHAR(MAX),
    cst_lastname        NVARCHAR(MAX),
    cst_marital_status  NVARCHAR(MAX),
    cst_gndr            NVARCHAR(MAX),
    cst_create_date     DATE
);
GO

IF OBJECT_ID('Bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE Bronze.crm_prd_info;
GO

CREATE TABLE Bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(MAX),
    prd_nm       NVARCHAR(MAX),
    prd_cost     INT,
    prd_line     NVARCHAR(MAX),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);
GO

IF OBJECT_ID('Bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE Bronze.crm_sales_details;
GO

CREATE TABLE Bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(MAX),
    sls_prd_key  NVARCHAR(MAX),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);
GO

IF OBJECT_ID('Bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE Bronze.erp_loc_a101;
GO

CREATE TABLE Bronze.erp_loc_a101 (
    cid    NVARCHAR(MAX),
    cntry  NVARCHAR(MAX)
);
GO

IF OBJECT_ID('Bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE Bronze.erp_cust_az12;
GO

CREATE TABLE Bronze.erp_cust_az12 (
    cid    NVARCHAR(MAX),
    bdate  DATE,
    gen    NVARCHAR(MAX)
);
GO

IF OBJECT_ID('Bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE Bronze.erp_px_cat_g1v2;
GO

CREATE TABLE Bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(MAX),
    cat          NVARCHAR(MAX),
    subcat       NVARCHAR(MAX),
    maintenance  NVARCHAR(MAX)
);
GO
