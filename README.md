Start new git repo:
https://kbroman.org/github_tutorial/pages/init.html

problems with git auth, so i created a new token, merged the main branch with master, deleted the branch main:
https://ginnyfahs.medium.com/github-error-authentication-failed-from-command-line-

https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository#creating-a-branch

Created README file from cli
https://www.transposit.com/docs/references/create-readme/


Created the dockerfile, mostly re-used the one from the previous task

For the 1st sts, i mostly re-used the stateful yaml from the 2nd task

Persistent volumes recap:
https://kubernetes.io/docs/concepts/storage/persistent-volumes/

Check the yaml
https://www.yamllint.com/

my pod was terminating due to exit code 137, solved modifying the sleep 1 to sleep 10000, i used:
https://stackoverflow.com/questions/60107959/solve-command-terminated-with-exit-code-137-in-pod-kubernetes
