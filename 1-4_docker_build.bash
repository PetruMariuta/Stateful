

docker_clean() {

    docker stop stateful
    docker rm stateful #petrumariuta/stateful:latest
    docker rmi -f petrumariuta/stateful
}
docker_build() {


docker buildx  build -t petrumariuta/stateful:latest -f  ./sts.Dockerfile .

docker tag statefulimg petrumariuta/stateful:latest
docker push petrumariuta/stateful:latest

docker run -itd --name stateful petrumariuta/stateful

}

docker_clean
docker_build
