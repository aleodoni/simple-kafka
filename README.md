# Simple Kafka Connector with PostgreSQL 

This is a simple project to validate how kafka and kafka-connect can capture 
PostgreSQL database changes.

## Must have
You should the following stuff installed:
- docker

## Setup
First initialize all containers with the command:

```
docker-compose up -d
```

Check if all containers starts successfully:
```
docker container ls
```
You should be able to see 4 containers running:
- connect
- kafka
- zookeeper
- postgres

## Initialize PostgreSQL Connector
You should register the connector executing the following command:
```
./scripts/initialize-postgres-connector.sh
```
You must receive a 201 response (created) from http://localhost:8083

## Start receiving kafka messages
To start receiving the messages, run the command:
```
./scripts/consume-messages.sh
```
All CRUD messages from PostgreSQL database should appear on the screen

## Try do create, update, delete some data
Access the psql command line executing the following command:
```
./scripts/access-psql.sh
```
And try to change some data and see all generated messages on the screen

## Stop all containers
To stop all containers, run the following command:
```
docker-compose down
```