
# Prerequesits
- Docker installed
- Jupyter installed


# 1 Build image

Required files to run the image:
- Dockerfile
- requirements.txt

```
docker build -t <name of image> .
```

 
# 2 Run jupyter image 


Run build image with command

```
docker run -it --name <name of container> -p 8888:8888 <name image>
```

if there is no local image with the name, the Docker daemon searches and downloads image e.g. "jupyter/base-notebook" from Docker hub


# 3 Run Jupyter notebook  
e.g. in VS Code or in browser with http://localhost:8888/  
(enter server ID / token, which is in Terminal output when container is started, is needed)

- interaction between container and jupyter notebooks
- new libraries can be installed either on
	- image, rebuild of image and container required
	- container, with jupyter notebook


# 4 Restart container next time

(1) restart container

```
docker start <containerID e.g. from Docker Desktop>
```


(2) get Jupyter URL from logs

```
docker logs <containerID e.g. from Docker Desktop>
```


(3) use Jupyter notebook with libraries



# Remarks
- specify libraries in requirements.txt
- build container again after changes
