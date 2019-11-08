## Roll out deployment
# kubectl create -f helloworld-black.yaml --record

## Upgrade deployment
# kubectl set image deployment/helloworld-black-deployment helloworld=karthequian/helloworld-blue

## See rollout history
# kubectl rollout history deployment/helloworld-black-deployment

## Revert upgrade
# kubectl rollout undo deployment/helloworld-black-deployment --to-revision=1
