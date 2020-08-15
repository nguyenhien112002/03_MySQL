-- tạo 2 bảng trong database testdb,
-- bảng user gồm các cột:
-- id: kiểu int tự động tăng khóa chinh
-- name: varchar(100), không được null
-- address: kiểu varchar(250) không được null
-- email: varchar(50), khong null khong trung lap

CREATE DATABASE IF NOT EXISTS testdb
DEFAULT CHARACTER SET UTF8
COLLATE utf8_bin;

create table if not exists testdb.user(
id int auto_increment,
name varchar(100) not null,
address varchar(250),
email varchar(50) not null unique,
primary key(id));

explain testdb.user;

create table if not exists testdb.login(
id varchar(36) unique not null,
login_time datetime default now(),
user_id int not null,
ip int not null,
user_agent varchar(250) not null,
primary key(id),
constraint FR_LOGIN_USER foreign key (user_id) references user(id)
);

drop table testdb.login;
explain testdb.login;

-- use testdb;
-- insert
use testdb;
insert into 
	user(name, email)
values (
	'Hien',
    'nguyenhien@yahoo.com'
);

insert into 
	login(
		id, 
        user_id,
        ip,
        user_agent
        )
values (
	'af668a35-02f2-49d4-814d-dded28cb1377',
    '1',
    '20200620',
    'chromeHIENCA'
);

-- select


	


