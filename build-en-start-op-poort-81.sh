./stop-en-remove-container.sh

echo building ...
docker build -t odw2-image .

echo running ...
docker container run -d -t -p 81:80 --name odw2-cont odw2-image
