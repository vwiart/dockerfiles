#!/bin/bash
sudo docker run --link synapps-mariadb:mysql --name mariadb-backup -d synapps/mariadb-backup
