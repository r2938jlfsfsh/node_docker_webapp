sudo docker build --build-arg APP_VERSION=${1:-1} -t rdlocal/node_server:latest -t rdlocal/node_server:v${1:-1} .

