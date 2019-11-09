## Creation
kubectl apply -f https://k8s.io/examples/pods/storage/pv-volume.yaml
kubectl apply -f https://k8s.io/examples/pods/storage/pv-claim.yaml
kubectl apply -f https://k8s.io/examples/pods/storage/pv-pod.yaml

## Deletion
kubectl delete pod task-pv-pod
kubectl delete pvc task-pv-claim
kubectl delete pv task-pv-volume
