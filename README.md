``` json
{
    "deployType": "Can be kubernetes or vm and specifies where will be the app deployed",
    "appType":"Can be java8 or python3 and specifies the programming language of the app",
    "gitRepoURL": "The repo where the project will be pushed",
    "appPort": "The port to which the application will listen",
    "user": {
        "username":"User that created the Deployment Structure and gave permission to create the Webhook"
    },
    "databaseInstance":{
        "db-type":"MYSQL or PostgreSQL",
        "storage-size":"Size in GB of the Database Instance",
        "schemas": [
        {"name": "Names of requied Database Schemas"}
       ]
    }
}
```
