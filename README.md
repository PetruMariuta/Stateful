Start new git repo:
https://kbroman.org/github_tutorial/pages/init.html

problems with git auth, so i created a new token, merged the main branch with master, deleted the branch main:
https://ginnyfahs.medium.com/github-error-authentication-failed-from-command-line-

https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository#creating-a-branch

Created README file from cli
https://www.transposit.com/docs/references/create-readme/


Created the dockerfile, mostly re-used the one from the previous task

-1ST STS sts, i mostly re-used the stateful yaml from the 2nd task

    Persistent volumes recap:
    https://kubernetes.io/docs/concepts/storage/persistent-volumes/

    Check the yaml
    https://www.yamllint.com/

    my pod was terminating due to exit code 137, solved modifying the sleep 1 to sleep 10000, i used:
    https://stackoverflow.com/questions/60107959/solve-command-terminated-with-exit-code-137-in-pod-kubernetes

-2ND STS was similar to the 1st sts, but i used df -h instead  of ps -awx

-3RD STS


#PT MAINE, AM REFACUT DOCKERFILE, TESTEAZA; trebuie testate sts3 si sts4 after 


points 1-3 au nevoie de alt dockerfile, nu au nevoie de apache2; 

script pt deploy de sts, functie -- for loop i in range 1,4

refacere dockerfile pt webserver si sts, shared volume


script care genereaza in html ce am eu in fisiere---gen <div> hardcoded ... cat/file </div>

#need a new statefulset, named stateful5 to append/take the data written in the files by the stateful sets, and put it into an html such that the data can be obtained when using curl on the statefulset/pod/port


#ordinea logica e configmap -> stateful -> service -> ingress; sterge pv nu pvc


#sudo systemctl restart cntlm; systemctl status cntlm 


!! VOLUMES
Volume claim templates e dinamic, nu poate stoca pe acelasi volum

APPLY PV -- PVC -- STS