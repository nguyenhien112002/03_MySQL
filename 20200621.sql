-- # update #
update 
jwat.country
set IS_DELETED = '1'
 , NAME = 'CHINA'
where id = 'CN';

--
use jwat; 

select * from port
where length(name)<5;
--
update port
set IS_DELETED = '1'
where 
length(name)<5;