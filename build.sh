printf -v date '%(%Y_%m_%d_%H_%M)T' -1
TAG=${date}
docker buildx build --tag us-central1-docker.pkg.dev/tensorflow-devel/actions-testing/actions-dev:"${TAG}" -f ./Dockerfile . --platform linux/amd64 --build-arg="TARGETOS=linux" --build-arg="TARGETARCH=amd64" --build-arg="VERSION=0.9.3" --push 


# --build-arg="TARGETOS=linux" --build-arg="TARGETARCH=amd64" 