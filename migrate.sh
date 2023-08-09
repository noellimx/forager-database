# host_name=localhost
password=password
db_name=app
port_dst=3306

# url="jdbc:mysql://$host_name:$port_dst/$db_name?createDatabaseIfNotExist=true"
url="jdbc:mysql://$host_name:$port_dst/$db_name"
# docker run -it --net="host" --rm -v ./migrations:/flyway/sql flyway/flyway -url="jdbc:mysql://$host_name:$port_dst/$db_name?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true" -user=root -password=$password migrate
# docker run -it --net="host" --rm -v ./migrations:/flyway/sql flyway/flyway -url=$url -user=root -password=$password migrate
# docker run -it --rm -v ./migrations:/flyway/sql flyway/flyway -url=$url -user=root -password=$password migrate
docker run --rm -v ./migrations:/flyway/sql flyway/flyway -url=$url -user=root -password=$password migrate

