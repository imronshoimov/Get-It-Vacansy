CREATE DATABASE giv;
CREATE EXTENSION pgcrypto;

/* 
    users
        root => 1
        recruiter => 2
        employee => 3

    company
    staff
*/

CREATE TABLE users (
    user_id serial primary key,
    user_first_name varchar(32) not null,
    user_last_name varchar(32) not null,
    user_username varchar(90) unique,
    user_password varchar(256) not null,
    user_role smallint not null,
    user_created_at timestamptz default current_timestamp,
	user_deleted_at timestamptz default null
);

CREATE TABLE company (
    company_id serial primary key,
    user_id int not null references users(user_id),
    company_name varchar(156) not null,
    specialization varchar(32) not null,
    technology text not null,
    experience varchar(32) not null,
    salary varchar(156) not null,
    type_work varchar(32) not null,
    location varchar(32) not null,
    number varchar(12) not null
);

CREATE TABLE staff (
    staff_id serial primary key,
    user_id int not null references users(user_id),
    specialization varchar(32) not null,
    technology text not null,
    experience varchar(12) not null,
    qualification varchar(32) not null,
    salary varchar(156) not null,
    type_work varchar(32) not null,
    location varchar(32) not null,
    age smallint not null,
    gender smallint not null,
    number varchar(12) not null
);

CREATE TABLE stuff_company(
    company_id int not null references company(company_id),
    staff_id int not null references staff(staff_id)
);