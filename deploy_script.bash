
docker_build() {

docker build -t petrumariuta/statefulimg .

docker tag statefulimg petrumariuta/statefulimg
docker push petrumariuta/statefulimg

docker run -itd --name petrumariuta/statefulimg

}

docker_build
