# curl-docker
Openshift run
oc new-app --docker-image=docker.io/femiosinowo/curl-docker:v1.0 --env FRONTEND_ADDR='https://productpage-bookinfo.apps.paosin.local/productpage?u=test' --env SLEEP_SECS=3
