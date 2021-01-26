# Starting DOMjudge
A simple guide for starting [DOMjudge](http://domjudge.org) using some helper Bash scripts

## Initialization

1. Clone this repository.
2. Run ```chmod +x *.sh``` command.

## Start server

1. Run ```./config_user_and_grub.sh``` command.
2. Restart your computer.
3. You can modify *DOMJUDGE_VERSION* and *MARIADB_VERSION* variables in *config_docker.sh* file (according to the latest released versions). Also, you can leave them unchanged.
4. Run ```./config_docker.sh``` command.
5. You can modify *DOMJUDGE_VERSION*, *MYSQL_PASSWORD*, and *MYSQL_ROOT_PASSWORD* variables in *start_server.sh* file. Also, you can leave them unchanged.
6. Run ```./start_server.sh``` command.
7. Check [http://localhost:12345](http://localhost:12345) via your Web browser. You should see DOMjudge now!

## Start workers

Suppose there is a working server on a machine. It doesn't matter the worker and the server are on the same machine or not; you should start a server beside the worker.

1. Run ```./config_user_and_grub.sh``` command.
2. Restart your computer.
3. You can modify *DOMJUDGE_VERSION* and *MARIADB_VERSION* variables in *config_docker.sh* file (according to the latest released versions). Also, you can leave them unchanged.
4. Run ```./config_docker.sh``` command.
5. You can modify *DOMJUDGE_VERSION*, *MYSQL_PASSWORD*, and *MYSQL_ROOT_PASSWORD* variables in *start_server.sh* file. Also, you can leave them unchanged.
6. Run ```./start_server.sh``` command.
7. Modify *DOMJUDGE_VERSION*, *SERVER_URL*, and *WORKER_PASSWORD* variables in *start_server.sh* file. The first one should be set to the URL of DOMjudge server, but the second one can have an arbitrary value.
8. Run ```./start_worker.sh 0``` command.
9. Now, a single worker (with ID 0) is up. You can start more concurrent workers on the same machine. For the next workers, just run ```./start_worker.sh 1```, ```./start_worker.sh 2``` and so on. The maximum number of workers equals the number of your machine CPU cores.

## Notes

If you get an error like "You have to remove (or rename) that container to be able to reuse that name.", remove those conflicting containers using ```docker stop``` and ```docker rm``` commands with the given IDs. ```sudo``` may be needed as well.

## See also

- [domjudge/domserver - Docker Hub](https://hub.docker.com/r/domjudge/domserver)
- [domjudge/judgehost - Docker Hub](https://hub.docker.com/r/domjudge/judgehost)

