
Plan:

vm ubuntu lts  

nfs server config

nfs share in /srv/kubernetes

refac primul sts, daca va merge vor merge si restul

add network policies

most likely toate containerele vor folosi un webserver

fa output-ul json

add certificate --> tutorial pe github

BONUS POINTS: service while loop sleep 60sec >> logfile


16 AUG:

re-configurat config files pentru vm cu proxy de la munca (thx Alex)
-configurat pvc pe namespace
-configurat pv 
-volumele configurate sa foloseasca nfs share (thx again Alex)
-primul deploy la sts (a dat niste erori, dupa cateva reconfigurari da eroare la pull image)

17 AUG:

git init

rezolva eroare la docker

sts-ul cred ca  va merge dupa ce rezolv cu docker

daca rezolv cu sts ma apuc si de al 2-lea dupa care fac network policies


