drop   database myitsdb;
create database myitsdb;

\c myitsdb;
create type status AS ENUM ('active', 'inactive', 'deleted_at');
create type roles AS ENUM ('admin', 'employee');

create table users (
    id serial primary key,
    email varchar(255) not null,
    name varchar(255) default null,
    birthdate date default null,
    profile_picture varchar(255) default null,
    last_connected_at timestamp default null,
    created_at timestamp not null,
    update_at timestamp not null,
    status status default 'active',
    deleted_at timestamp default null
);

create table compagnies (
    id serial primary key,
    name varchar(255) default null,
    created_at timestamp not null,
    update_at timestamp not null,
    status status default 'active',
    deleted_at timestamp default null
);

create table compagnies_users_roles (
    id serial primary key,
    user_id integer not null,
    compagny_id integer not null,
    role roles default 'admin'
);


