sudo docker run -p 3001:3001 -v /home/rd/WebstormProjects/db:/home/rd/WebstormProjects/db --name=qryServer rdlocal/node_server:latest node server.js --SERVER_TYPE=queryServer
#sudo docker run -p 3000:3000 -v /home/rd/WebstormProjects/db:/home/rd/WebstormProjects/db --name=qryServer --net=host rdlocal/node_server:latest node server.js --SERVER_TYPE=queryServer
