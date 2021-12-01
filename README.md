# CloudTask

PART 1
1) Installed docker and Docker-compose in the EC2 instance.
2) Pulled the images.
          docker pull 
          docker pull prom/prometheus:v2.22.0
3) docker run -d infracloudio/csvserver:latest was exiting as soon as it was launched.
4) Found the reason using docker logs <image_instanceid> 
5) Wrote the shell script for random numbers present in gencsv.sh file.
6) inputfile was found as output for the shell script.
7) Mounted the file onto the docker inputdata folder using the command -
           docker run -d -v /root/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
8) Checked the port on which docker container was listening by using shell of docker container.
           docker exec -it <container_id>
9) Checked netstat -tnlp for checking listening ports
10) Exited the container.
11) Launched the docker container again with environment variables and port binding.
           docker run --env CSVSERVER_BORDER=Orange -d -v /root/csvserver/solution/inputFile:/csvserver/inputdata -p 9393:9300 infracloudio/csvserver:latest
12) Container gets launched with all needed parameters.
13) Curl the output.


