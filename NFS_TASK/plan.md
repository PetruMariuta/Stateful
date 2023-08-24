
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



in entrypoint script pune un sleep pt troubleshoot


ingress si services pt fiecare container



fa base64 -w -0 pt noul wildcard certificate 


apiVersion: v1
kind: Secret
metadata:
  name: tls-secret
type: kubernetes.io/tls
data:
  tls.crt: BASE64_ENCODED_CERTIFICATE_CONTENTS
  tls.key: BASE64_ENCODED_PRIVATE_KEY_CONTENTS
Replace BASE64_ENCODED_CERTIFICATE_CONTENTS and BASE64_ENCODED_PRIVATE_KEY_CONTENTS with the Base64-encoded content of your generated certificate (cert.pem) and private key (cert-key.pem), respectively.

You can use the following commands to obtain the Base64-encoded content of your certificate and private key files:


# For certificate
base64 -w 0 cert.pem

# For private key
base64 -w 0 cert-key.pem


traefik este reverse-proxy-ul
coredns - serviciul de dns deployed in k8s



