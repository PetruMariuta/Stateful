kube_delete() {
kubectl delete sts stateful
kubectl delete pods stateful-0
kubectl delete pvc stateful-volume-stateful-0


for i in {2..5}
do 
  if [ $i -ne 4 ];then
  kubectl delete sts "stateful$i"
  kubectl delete pods "stateful$i-0"
  kubectl delete pvc "stateful-volume-stateful$i-0"
   #echo "stateful$i"
   fi

done

}

kube_apply(){

for i in {2..5}
do 
  if [ $i -ne 4 ];then
  kubectl apply -f "sts$i.yaml"
   #echo "stateful$i"
   fi
done

kubectl apply -f stateful5.yaml

}
kube_delete
kube_apply