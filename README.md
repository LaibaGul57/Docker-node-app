# Node Docker App

This is a simple Node.js web application that returns "Hello, Docker!" when accessed on web browser.  
It is containerized using Docker.

## 📦 How to Build and Run the App

### 1. Build the Docker image:
```bash
docker build -t node-docker-app .




#   Task 02 Commands
docker ps –  this command show Lists  of all currently running containers.

docker stop – this command stop my container from running stage.

docker rm –it  Removes my container.

docker logs – Shows the logs (output) of a container’s process.

docker inspect – Provides detailed info (JSON) about a container or image like network setting,cmd,global IPaddress etc.

docker exec – Runs a command inside a running container.

docker attach – Connects your terminal directly to a container’s output.

docker commit – it  Creates a new image from an existing container's state.

docker cp – Copies files or folders between host and container.

docker stats – Displays live CPU, memory, and network usage of containers.

docker top – Lists running processes inside a container.

docker start – Starts a stopped container.

docker pause – Suspends all processes in a container.

docker unpause – Resumes a paused container.

docker rename – Renames an existing container.

docker wait – Waits for a container to stop, then prints its exit code.

docker attach – (Again) Attaches terminal to a running container .

docker port – Shows the public-facing port mapped to the container's port.

docker update – Changes resource limits (like memory ) for a container.

docker restart – Stops and starts a container in one step.

# task  03  
#  part 03

Steps completed to practice Docker volume usage, image pulling, container management, and serving custom HTML pages using nginx and httpd.

Steps Completed
1. Created Docker Volume
Command used:
docker volume create my_volume
→ Created a named volume my_volume to persist data across containers.

2. Ran Nginx Container with Volume Mount
Command used:
docker run -d --name nginx-container -p 8080:80 -v my_volume:/usr/share/nginx/html nginx
→ Started an Nginx container and mounted my_volume to serve HTML content.

3. Verified Default Nginx Page
→ Opened http://localhost:8080 in the browser to see the Nginx default welcome page.

4. Created index.html
→ A custom HTML file named index.html was created on the host machine with sample content.

5. Copied index.html into Container
Command used:
docker cp index.html nginx-container:/usr/share/nginx/html/index.html
→ Replaced the default Nginx page with the custom index.html file.

6. Verified Custom Page on Nginx
→ Refreshed http://localhost:8080 to confirm that the new custom page was displayed.

7. Stopped and Removed Nginx Container
Commands used:
docker stop nginx-container
docker rm nginx-container
→ Stopped and removed the Nginx container after testing.

8. Ran HTTPD  Container with Same Volume
Command used:
docker run -d --name httpd-container -p 8081:80 -v my_volume:/usr/local/apache2/htdocs httpd
→ Started an Apache container with the same volume to test reusability.

9. Verified Default HTTPD Page
→ Opened http://localhost:8081 in the browser to view the Apache default page.

10. Created about.html
→ Created another HTML file named about.html on the host machine with sample content.

11. Copied about.html into HTTPD Container
Command used:
docker cp about.html httpd-container:/usr/local/apache2/htdocs/about.html
→ Added the new file to the shared volume for the Apache container to serve.

12. Verified Custom About Page
→ Opened http://localhost:8081/about.html in the browser and confirmed the page was accessible.

13. Stopped and Removed HTTPD Container
Commands used:
docker stop httpd-container
docker rm httpd-container
→ Cleaned up the HTTPD container after testing.

14. Verified Volume Content
Command used:
docker run --rm -v my_volume:/data busybox ls /data
→ Verified that both index.html and about.html were still in the volume.

15. Removed Volume
Command used:
docker volume rm my_volume
→ Removed the volume after testing was complete.



