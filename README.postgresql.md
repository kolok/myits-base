# MyITS DB
Here is the README related to the Postgresql database

DB is implement as a docker in the docker-compose.yml file
To launch the Database as a daemon in a docker

$ mkdir -p /var/lib/postgresql/data/myitsdata
$ docker-compose up -d

# Import MyITS Database (if needed)
docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user < myits.00.db.sql

# Import MyITS feature one by one
docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user < myits.01.users.sql

# Import MyITS database and its features in a one liner
cat myits.* | docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user

# Connect to DB 
docker exec -ti technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U myits-user

# Expore the DB
$> \c myitsdb;
$> select * from users;...

# Usefull links
http://www.postgresqltutorial.com/


