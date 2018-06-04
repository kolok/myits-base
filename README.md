# technical-stack-for-b-to-c-business
Try to implement the better stack possible to start a B to C business

DB is implement as a docker in the docker-compose.yml file
To launch the Database as a daemon in a docker

$ mkdir -p /var/lib/postgresql/data/myitsdata
$ docker-compose up -d

# Import the MyITS Database (if needed)
docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U mits-user < myits.db.sql

# Connect to DB 
docker exec -i technicalstackforbtocbusiness_db_1 psql -p 5432 -h 127.0.0.1 -U mits-user

# Expore the DB
$> \c myitsdb;
$> select * from users;...
