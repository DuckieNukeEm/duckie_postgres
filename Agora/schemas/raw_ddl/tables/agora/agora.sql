drop table if exists raw_ddl.agora;
create table raw_ddl.agora
( 
     vendor varchar(60000)
    ,category varchar(60000)
    ,item varchar(60240)
    ,item_description varchar(60000)
    ,price varchar(60000)
    ,origin varchar(60000)
    ,destination varchar(60000)
    ,rating varchar(60000)
    ,remarks varchar(60000)

);

grant select on raw_ddl.agora to ro_role;


COPY raw_ddl.agora(
     vendor 
    ,category 
    ,item 
    ,item_description 
    ,price 
    ,origin
    ,destination 
    ,rating 
    ,remarks  )
FROM '/mountpoint/Agora.csv'
DELIMITER ','
csv header
encoding 'unicode'
where length(price) < 100;

alter table raw_ddl.agora owner to rw_role;
commit;

