# docker-fgms

Builds a Docker image for the Flight Gear Multiplayer Server

## Configure the Server

Open the fgms.conf file and modify the "server.address" to point to your
machine's IP address. By default, this is 127.0.0.1; thus, only flightgear
clients on your local machine will be able to connect to the server.

## Build the Server

    $ docker build -t syllogismrxs/fgms:latest .
    
## Run the Server

    $ docker run --network="host" syllogismrxs/fgms:latest
    
    
