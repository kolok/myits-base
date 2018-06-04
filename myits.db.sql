drop   database myitsdb;
create database myitsdb;

\c myitsdb;
create type status AS ENUM ('active', 'inactive', 'deleted_at');

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

