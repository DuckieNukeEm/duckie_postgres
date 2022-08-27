CREATE TABLE raw_ddl.iris (
    sepal_length numeric(2,1),
    sepal_width numeric(2,1),
    petal_length numeric(2,1),
    petal_width numeric(2,1),
    species varchar(10)
)
alter table raw_ddl.iris owner to rw_role;
grant select on raw_ddl.iris to duckienukeem;


/*
CREATE temporary TABLE iris (
    sepal_length numeric(2,1),
    sepal_width numeric(2,1),
    petal_length numeric(2,1),
    petal_width numeric(2,1),
    species varchar(15)
)


COPY iris(
    sepal_length ,
    sepal_width ,
    petal_length ,
    petal_width ,
    species )
FROM '/mountpoint/Kaggle/iris.csv'
DELIMITER ','
csv HEADER;

insert into raw_ddl.iris 
select
     sepal_length 
    ,sepal_width 
    ,petal_length 
    ,petal_width 
    ,substring(species, 6)
from iris;

drop table iris;

select * from raw_ddl.iris;
*/