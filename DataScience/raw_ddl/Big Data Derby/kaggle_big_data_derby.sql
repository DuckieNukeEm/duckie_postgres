CREATE TABLE raw_ddl.kaggle_big_data_derby (
     track_id char(3) 
    ,race_date date
    ,race_number int
    ,program_number varchar(3)
    ,trakus_index int
    ,latitude numeric(16,13)
    ,longitude numeric(16,13)
    ,distance_id int
    ,course_type char(1)
    ,track_condition varchar(3)
    ,run_up_distance int
    ,race_type varchar(3)
    ,purse int
    ,post_time int
    ,weight_carried int
    ,jockey varchar(60)
    ,odds bigint
);
alter table raw_ddl.kaggle_big_data_derby owner to rw_role;
grant select on raw_ddl.kaggle_big_data_derby to duckienukeem;

copy raw_ddl.kaggle_big_data_derby (
     track_id
     ,race_date
     ,race_number
     ,program_number
     ,trakus_index
     ,latitude
     ,longitude
     ,distance_id
     ,course_type
     ,track_condition
     ,run_up_distance
     ,race_type
     ,purse
     ,post_time
     ,weight_carried
     ,jockey
     ,odds

)
FROM '/mountpoint/Kaggle/Horse Racing/nyra_2019_complete.csv'
DELIMITER ','
csv HEADER;
