# technical-stack-for-b-to-c-business

Try to implement the better stack possible to start a B to C business

All the project is decribe in a blog, you'll find it here :
http://blog.oudard.org/index.php/myits-menu/

Project related to MyITS DB : https://github.com/kolok/myits-db

Project related to MyITS Swagger : https://github.com/kolok/myits-swagger

## About DOCKER COMPOSE

to set the configuration to be launched by docker-compose, we should set the variable 
COMPOSE_FILE in .env file

the docker-compose environment is split as follow :
  * main configuration : docker-compose.yml
  * DB configuration : docker-compose.db.yml

