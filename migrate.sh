host_name=
password=
db_name=app
port_dst=3306
url="jdbc:mysql://$host_name:$port_dst/$db_name?createDatabaseIfNotExist=true"


# local
# docker run -it --net="host" --rm -v ./migrations:/flyway/sql flyway/flyway -url="jdbc:mysql://$host_name:$port_dst/$db_name?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true" -user=root -password=$password migrate

# production
docker run -it --rm -v ./migrations:/flyway/sql flyway/flyway -url=$url -user=root -password=$password migrate


