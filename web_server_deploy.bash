docker_clean() {

    docker stop apache-task5
    docker rm apache-task5 #petrumariuta/apache-task5:latest
    docker rmi -f petrumariuta/apache-task5
}

docker_build() {


docker buildx  build -t petrumariuta/apache-task5:latest -f  ./web-server.Dockerfile .

docker tag apache-task5-img petrumariuta/apache-task5:latest
docker push petrumariuta/apache-task5:latest

docker run -itd --name apache-task5 petrumariuta/apache-task5

}

docker_clean
docker_build