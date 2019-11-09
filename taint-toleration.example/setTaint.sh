## Types of taint
1. NoSchedule: if there is at least one un-ignored taint with effect NoSchedule then Kubernetes will not schedule the pod onto that node

2. PreferNoSchedule: if there is no un-ignored taint with effect NoSchedule but there is at least one un-ignored taint with effect PreferNoSchedule then Kubernetes will try to not schedule the pod onto the node

3. NoExecute:if there is at least one un-ignored taint with effect NoExecute then the pod will be evicted from the node (if it is already running on the node), and will not be scheduled onto the node (if it is not yet running on the node).

For example, imagine you taint a node like this

kubectl taint nodes node1 key1=value1:NoSchedule
kubectl taint nodes node1 key1=value1:NoExecute
kubectl taint nodes node1 key2=value2:NoSchedule

## Set taint to a node
# kubectl taint nodes node-name key=value:effect
# kubectl taint nodes node-name infra=special:NoSchedule


## Untaint
# kubectl taint nodes node-name key-
# kubectl taint nodes node-name infra-

## Toleration for pods
tolerations:
- key: "key1"
  operator: "Equal"
  value: "value1"
  effect: "NoSchedule"
- key: "key1"
  operator: "Equal"
  value: "value1"
  effect: "PreferNoSchedule"
- key: "key1"
  operator: "Equal"
  value: "value1"
  effect: "NoExecute"
  tolerationSeconds: 3600

  

