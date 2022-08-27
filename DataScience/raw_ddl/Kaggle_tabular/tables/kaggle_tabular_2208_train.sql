CREATE TABLE raw_ddl.kaggle_tabular_2208_train (
     id int
    ,product_code varchar(1)
    ,loading numeric(6,2)
    ,attribute_0 varchar(30)
    ,attribute_1 varchar(30)
    ,attribute_2 char(1)
    ,attribute_3 char(1)
    ,measurement_0 numeric(6,2)
    ,measurement_1 numeric(6,2)
    ,measurement_2 numeric(6,2)
    ,measurement_3 numeric(6,2)
    ,measurement_4 numeric(6,2)
    ,measurement_5 numeric(6,2)
    ,measurement_6 numeric(6,2)
    ,measurement_7 numeric(6,2)
    ,measurement_8 numeric(6,2)
    ,measurement_9 numeric(6,2)
    ,measurement_10 numeric(6,2)
    ,measurement_11 numeric(6,2)
    ,measurement_12 numeric(6,2)
    ,measurement_13 numeric(6,2)
    ,measurement_14 numeric(6,2)
    ,measurement_15 numeric(6,2)
    ,measurement_16 numeric(6,2)
    ,measurement_17 numeric(6,2)
    ,failure smallint
    ,primary key(id)
);
alter table raw_ddl.kaggle_tabular_2208_train owner to rw_role;
grant select on raw_ddl.kaggle_tabular_2208_train to duckienukeem;

copy raw_ddl.kaggle_tabular_2208_train (
     id
    ,product_code
    ,loading
    ,attribute_0
    ,attribute_1
    ,attribute_2
    ,attribute_3
    ,measurement_0
    ,measurement_1
    ,measurement_2
    ,measurement_3
    ,measurement_4
    ,measurement_5
    ,measurement_6
    ,measurement_7
    ,measurement_8
    ,measurement_9
    ,measurement_10
    ,measurement_11
    ,measurement_12
    ,measurement_13
    ,measurement_14
    ,measurement_15
    ,measurement_16
    ,measurement_17
    ,failure
)
FROM '/mountpoint/Kaggle/tabular/train.csv'
DELIMITER ','
csv HEADER;
