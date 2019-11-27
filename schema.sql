drop database if exists `my_user`;
create database my_user;
use my_user;

drop table if exists `user`;
create table `user` (
    `id` bigint primary key auto_increment,
    `create_time` timestamp default current_timestamp,
    `update_time` timestamp default current_timestamp on update current_timestamp,
    `username` varchar(30),
    `password` varchar(30) not null,
    `phone` char(11) unique,
    `email` varchar(50) unique,
    `avatar` varchar(200),
    `student_id` bigint,
    `company_id` bigint
    -- foreign key (`student_id`) references `student`(`id`),
    -- foreign key (`company_id`) references `company`(`id`)
);

drop table if exists `student`;
create table `student` (
    `id` bigint primary key auto_increment,
    `create_time` timestamp default current_timestamp,
    `update_time` timestamp default current_timestamp on update current_timestamp,
    `name` varchar(30),
    `school` varchar(50),
    `major` varchar(50),
    `gender` bit,
    `graduate_year` smallint,
    `education` varchar(10)
);

drop table if exists `company`;
create table `company` (
    `id` bigint primary key auto_increment,
    `create_time` timestamp default current_timestamp,
    `update_time` timestamp default current_timestamp on update current_timestamp,
    `short_name` varchar(30) comment '企业简称',
    `full_name` varchar(50) comment '企业全称',
    `logo` varchar(200),
    `address` varchar(100),
    `trade` varchar(50) comment '行业',
    `introduce` varchar(200)
);