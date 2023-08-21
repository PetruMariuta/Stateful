docker_clean() {

    docker stop user1
    docker rm user1 #petrumariuta/user1:latest
    docker rmi -f petrumariuta/user1
}

docker_build() {


docker buildx  build -t petrumariuta/user1:latest -f  ./user1.Dockerfile .

docker tag user1-img petrumariuta/user1:latest
docker push petrumariuta/user1:latest

docker run -itd --name user1 petrumariuta/user1

}

docker_clean
docker_build