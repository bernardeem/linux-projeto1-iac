#!/bin/bash

mkdir /publico /adm /ven /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM adm
chgrp GRP_VEN ven
chgrp GRP_SEC sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

useradd carlos -c "Carlos" -s /bin/bash -m -p  $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c "Joao" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_ADM
useradd debora -c "Debora" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_VEN
useradd josefina -c "Josefina" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p$(openssl passwd -6 senha123) -G GRP_SEC

