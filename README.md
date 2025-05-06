# database

For user db

start
```
docker-compose up -d
```

stop
```
docker-compose stop
```

jdbc:postgresql://localhost:5432/retail


load data 

```
kubectl get pods -l app=postgres
kubectl exec -it postgres-deployment-bc4c4fb57-p5dlt  -- psql -U toteall -d postgres
psql -U postgres -d postgres -c "CREATE DATABASE retail OWNER toteall;"
exit 
kubectl exec -it postgres-deployment-bc4c4fb57-p5dlt  -- psql -U toteall -d retail
execute user-db.sql
```