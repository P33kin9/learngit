-- schema.sql

drop database if exists awesome;

create database awesome;

use awesome;

create user if not exists 'wwwdata'@'localhost' IDENTIFIED BY 'wwwdata';

grant select, insert, update, delete on awesome.* to 'wwwdata'@'localhost'; 

create table users(
	`id` varchar(50) not null,
	`email` varchar(50) not null,
	`passwd` varchar(50) not null,
	`admin` varchar(50) not null,
	`name` varchar(50) not null,
	`image` varchar(50) not null,
	`create_at` real not null,
	unique key `idx_email` (`email`),
	key `idx_create_at` (`create_at`),
	primary key (`id`)
)engine=InnoDB default charset=utf8;

create table comments (
	`id` varchar(50) not null,
	`blog_id` varchar(50) not null,
	`user_id` varchar(50) not null,
	`user_name` varchar(50) not null,
	`user_image` varchar(500) not null,
	`content` varchar(50) not null,
	`create_at` real not null,
	key `idx_create_at` (`create_at`),
	primary key (`id`)
) engine=InnoDB default charset=utf8;
