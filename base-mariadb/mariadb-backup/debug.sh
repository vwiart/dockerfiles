#/bin/bash
sudo docker run --link synapps-mariadb:mariadb -it synapps/mariadb-backup /bin/bash
