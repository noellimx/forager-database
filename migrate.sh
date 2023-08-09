host_name=localhost
password=your-root-password
db_name=app
port_dst=3307
url="jdbc:mysql://$host_name:$port_dst/$db_name"


# local
docker run -it --net="host" --rm -v ./migrations:/flyway/sql flyway/flyway -url="jdbc:mysql://$host_name:$port_dst/$db_name?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true" -user=root -password=$password migrate

# development
# docker run -it --rm -v ./migrations:/flyway/sql flyway/flyway -url=$url -user=root -password=$password migrate


