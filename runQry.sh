sudo docker run -d --net=host -p 3001:3001 --name=qryServer rdlocal/node_server:latest node server.js --SERVER_TYPE=queryServer
