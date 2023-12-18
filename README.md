# sample_oracle19c_docker

This repository provides a small `docker` `compose.yml` file to work with Oracle Enterprise 19c using Docker. This Repository is not affiliated with Oracle in any way.

# Prerequisites
1) You have Docker+Docker Desktop installed.
2) You have the minimum RAM and Disk Space as specified by Oracle.


# Quickstart

An extensive write-up is available at the [linked blog post](https://aathish04.github.io/posts/Docker-OracleDB). A quickstart is provided in this README.

### Installing and Using

1) Clone this repository to your local system.
2) Download the Oracle Database 19c for LINUX (Enterprise Edition) ZIP file for your Architecture (ARM or AMD64) and place it in the `docker-images/OracleDatabase/SingleInstance/dockerfiles/19.3.0` folder.
3) Run the `docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh` shell script with the appropriate command line tags: `./buildContainerImage.sh -e -v 19.3.0` (`-e` for `e`nterprise, `-v 19.3.0` for the appropriate version)
4) Wait for the Build to complete.
5) Set the appropriate `ORACLE_PWD` (oracle database administrator password) and other environment variables etc in the `compose.yml` file.
6) Place your `SQL` programs in the `programs` folder. This folder will be available as the `/home/oracle/programs` folder inside the docker container.
7) Run `docker compose up`. And wait for the database to finish creation/startup.
8) Open up the `Docker Desktop` and open the `exec` tab of the created Docker container.
   1) You can treat this as the shell of a virtual machine.
9) Move into the `programs` directory from within the Container, and run `sqlplus sys/oracle@//localhost:1521/ORCL as sysdba` replacing `oracle` with the password you set and replacing other changed environment variables appropriately.
10) Now you can run SQL commands and programs!

Since port 1521 is exposed, you should also be able to run programs that connect to the database using the `JDBC`.

### Cleaning Up
1) Remove this repository (its folder) from your computer.
2) Delete the created Docker container
3) Delete the created Docker image.

# Acknowledgements

[This `docker-run-to-compose` converter](https://8gwifi.org/dc1.jsp) was used to convert a version of the Docker run command from [this README from Oracle's Github Repository](https://github.com/oracle/docker-images/blob/main/OracleDatabase/SingleInstance/README.md) to a `compose.yml` file.

This repository is not affiliated with Docker Inc. or Oracle in any way.