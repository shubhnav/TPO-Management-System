/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Shubhanshu Prajapati
 * Created: Feb 8, 2020
 */
create database tpoproject;

use tpoproject;

create table if not exists
Branch(
BranchName varchar(10) not null,
Bid integer(6) primary key auto_increment
);

insert into Branch values('CSE',1);

create table if not exists
Gender(
GenderName varchar(15) not null,
Gid tinyint(1) primary key auto_increment
);

insert into Gender values('Male',1);
insert into Gender values('Female',2);
insert into Gender values('Transgender',3);

create table if not exists
Student(
    Name varchar(30) NOT NULL,
    Address varchar(30),
    Email varchar(20) NOT NULL,
    Mobile varchar(10) NOT NULL,
    Branch integer(6),
    HighSch integer(6),
    HighSecondary integer(6),
    Be integer(6),
    Passingyear integer(6),
    Gender tinyint(1),
    constraint pk_Stu primary key (Email,Mobile),
    constraint fk_Stu_branch foreign key (Branch)
    references Branch(Bid),
    constraint fk_Stu_gender foreign key (Gender)
    references Gender(Gid)
);
insert into Student values('Mr.Student','adminstu','adminstu@gmail.com','89748***',1,60,60,60,2014,1);


create table if not exists
Company(
    CompanyId integer(6) primary key auto_increment,
    CompanyName varchar(20) NOT NULL,
    Address varchar(10),
    Email varchar(20),
    ContactNo varchar(10),
    HR varchar(10)
);
insert into Company values(1,'admin-Company','admin','admin@gmail.com','89748***','Mr.Cool');

create table if not exists
Campus(
    CompanyId integer(6),
    DateOfCampus DATE,
    ReqCand integer(6),    
    HighSch integer(6),
    HighSecondary integer(6),
    Be integer(6),
    BranchId integer(6),
    constraint fk_Cam_branch foreign key (BranchId)
    references Branch(Bid),
    constraint fk_Cam_company foreign key (CompanyId)
    references Company(CompanyId)

);
insert into Campus values(1,'2020-02-09',1,50,50,50,1);