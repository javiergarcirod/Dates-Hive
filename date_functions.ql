
---- Compute the number of week from a date
 ---format 'dd/MM/yy' 
 select concat(substr(original_date,7,8),'-',weekofyear(to_date(from_unixtime(UNIX_TIMESTAMP(original_date ,'dd/MM/yy'))))) as date,
 from data;
 

 ---- Convert Excel date format .
 select to_date(from_unixtime((cast(original_date as bigint)*86400)-2209161600)) as fecha
 from data; 
 where weekofyear(to_date(from_unixtime(UNIX_TIMESTAMP(original_date ,'dd/MM/yy')))) is NULL
 group by to_date(from_unixtime((cast(original_date as bigint)*86400)-2209161600)) ;







