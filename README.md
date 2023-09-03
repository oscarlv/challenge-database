Database used for challenge
==========================================================

This is image can be used to install demo databases in a MariaDB container on startup.

### Configuration

Set environment variables to setup database schema with script, see `docker-compose.yml`


- `INSTALL_ONTOP=1`

### Usage

	docker-compose up -d
	docker exec mariadb /init-db.sh


### Build

	docker build -t oscarlv/challenge-database .
