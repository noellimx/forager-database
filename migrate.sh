


docker run -it --net="host" --rm -v ./migrations:/flyway/sql flyway/flyway -url="jdbc:mysql://localhost:$port_src/$db_name?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true" -user=root -password=$password migrate
