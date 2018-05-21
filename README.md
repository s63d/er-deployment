# ER-Deployment

## Run the project
Simply run the following command in the terminal (Bash/Powershell)
```
$ ./run.sh
````

## Exposed services
This will expose the following ports on the host machine
- 8080 for the  `vehicle service`
- 8081 for the  `account service`
- 8082 for the `trip service`
- 8083 for the `trip consumer`
To see if a service is up and running you can check the `/actuator/health` page



## Databases
This wil also start 3 MySQL servers, they can be accesed by the following connection string

| Port | Database   | Username | Password
| ---- | --------   | -------- | ------- 
| 3307 | account-db | root     | accounts
| 3308 | vehicle-db | root     | accounts
| 3309 | trip-db    | root     | accounts

## RabbitMQ
The management console is accesable from http://localhost:15672. There will be a queue named `Proftaak` and the routing key is `abc.a`. This will be created during runtime.

| Username | Password |
| -------- | -------- |
| guest    | guest    |

## Grafana

Grafana is also exposed to the host system. The service is available through port `3000` and using the following credentials

| Username | Password
| -------- | --------
| admin    | admin

### Logs
If you want to see logs of the docker-compose you can run the following command

```
$ docker-compose logs -f
```
This will follow the logs and you can detach with `ctrl-z`

If you are only interested in the logs of a specific service you can run
```
$ docker-compose logs -f <service>
```