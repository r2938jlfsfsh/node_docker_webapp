sudo docker run -p 3000:3000 -v /home/rd/WebstormProjects/db:/home/rd/WebstormProjects/db --name=msgServer --net=host rdlocal/node_server:latest node server.js --SERVER_TYPE=messageServer
