# ER-Deployment

## Run the project
Simply run the following command in the terminal (Bash/Powershell)
```
$ ./run.sh
````

This will expose the following ports on the host machine
- 8080 for the  `vehicle service`
- 8081 for the  `account service`
- 8082 for the `trip service`
- 8083 for the `trip consumer`

This wil also start 3 MySQL servers, they can be accesed by the following connection string

| Port | Database | Username | Password
| ---- | -------- | -------- | ------- 
| 3307 | account-db | root | accounts
| 3308 | vehicle-db | root | accounts
| 3309 | trip-db | root | accounts