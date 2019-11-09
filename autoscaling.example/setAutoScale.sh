## we will start a deployment running the image and expose it as a service:
kubectl run php-apache --image=k8s.gcr.io/hpa-example --requests=cpu=200m --limits=cpu=500m --expose --port=80

## Create horizontal pod scaler
kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

## CHeck HPA
kubectl get hpa

## Increase load
kubectl run -i --tty load-generator --image=busybox /bin/sh

Hit enter for command prompt

while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done

Within a minute or so, we should see the higher CPU load by executing:

kubectl get hpa

## See how many replicas running now
kubectl get deployment php-apache

## Stop load
CTRL+C and exit from busybox pod.

## Check replicas count again
kubectl get deployment php-apache

