imageId=$(docker images | grep "v1" | awk '{print $3}')
#echo $imageId
if [ -z $imageId ]
then
    docker build -t t:v1 .
    exit 0
fi
echo "image id: "$imageId
containerId=$(docker ps -a | grep "$imageId" | awk '{print $1}')

echo "container id: "$containerId

docker rm $containerId
docker rmi $imageId

docker build -t t:v1 .
newImageId=$(docker images | grep "v1" | awk '{print $3}')
docker run -it $newImageId /bin/bash
