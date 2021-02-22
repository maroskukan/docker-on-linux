# Pull image from docker hub
curl --silent \
    -X POST http://192.168.137.145:2375/v1.41/images/create?fromImage=alpine\&tag=latest

# Start container
curl --silent \
    -H "Content-Type: application/json" \
    -d '{"Image": "alpine", "Cmd": ["echo", "hello world"]}' \
    -X POST http://192.168.137.145:2375/containers/create?name=foo

# Query list of running containers
curl --silent \
     -X GET http://192.168.137.145:2375/containers/json \
     | jq ".[].Names" 

# Query list of available images
curl --silent \
    -X GET http://192.168.137.145:2375/images/json \
    | jq

