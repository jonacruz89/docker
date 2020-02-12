sudo docker run -dti --name netbeans-dev -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -v /home/$(whoami)/Documents/projects/.netbeans:/home/$(whoami)/.netbeans:rw \
           -v /home/$(whoami)/Documents/projects/:/home/$(whoami)/NetBeansProjects:rw \
           -v /home/$(whoami)/Documents/projects/.netbeans/8.2/config/Preferences/org/netbeans/modules/php/project/RemoteConnections:/home/$(whoami)/.netbeans/8.2/config/Preferences/org/netbeans/modules/php/project/RemoteConnections:rw \
           openkbs/netbeans
