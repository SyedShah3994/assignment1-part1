# Docker Assignment 1 - Part 1
## Overview (app, author, Docker Hub link)
## Step 1: Sample Application: 
Python

## Step 2: Dependencies: 
flask==3.0.3

## Step 3: Dockerfile  (paste Dockerfile + explain each line):
# Base image (OS + Python runtime)
FROM python:3.12-slim

# Working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

# Configuration: unbuffered logs, document the port
ENV PYTHONUNBUFFERED=1
EXPOSE 5000

# Command run when the container starts
CMD ["python", "app.py"]
## Step 4: Build the Image
### Command:
docker build -t syedshah3994/hello-flask:1.0 .

### Logs:
docker build -t syedshah3994/hello-flask:1.0 .
[+] Building 35.1s (11/11) FINISHED                                                                                                                                                                           docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                                          0.0s
 => => transferring dockerfile: 455B                                                                                                                                                                                          0.0s
 => [internal] load metadata for docker.io/library/python:3.12-slim                                                                                                                                                           3.2s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                                                             0.0s
 => => transferring context: 2B                                                                                                                                                                                               0.0s
 => [internal] load build context                                                                                                                                                                                             0.0s
 => => transferring context: 365B                                                                                                                                                                                             0.0s
 => [1/5] FROM docker.io/library/python:3.12-slim@sha256:05cda9777409a9c3ffddd94a4c476b79f0769a0b4857f0c7ed9226b6800b0d6f                                                                                                    17.5s
 => => resolve docker.io/library/python:3.12-slim@sha256:05cda9777409a9c3ffddd94a4c476b79f0769a0b4857f0c7ed9226b6800b0d6f                                                                                                     0.0s
 => => sha256:bbc5a12237474ec0b23b5051260d56d6436a24d70d9cad961adebe7a037ed813 249B / 249B                                                                                                                                    0.4s
 => => sha256:6912e23eb44595b44dc6d9882b34f305ad6f6e9667cec70b13e5dbc4f8cd97f4 12.12MB / 12.12MB                                                                                                                              7.1s
 => => sha256:75b6a36c64a1cf3520fc4b4aae4739d5caa8a6a05c27835a920a61784c9c32f8 1.29MB / 1.29MB                                                                                                                                2.6s
 => => sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e 29.84MB / 29.84MB                                                                                                                             16.6s
 => => extracting sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e                                                                                                                                     0.5s
 => => extracting sha256:75b6a36c64a1cf3520fc4b4aae4739d5caa8a6a05c27835a920a61784c9c32f8                                                                                                                                     0.1s
 => => extracting sha256:6912e23eb44595b44dc6d9882b34f305ad6f6e9667cec70b13e5dbc4f8cd97f4                                                                                                                                     0.3s
 => => extracting sha256:bbc5a12237474ec0b23b5051260d56d6436a24d70d9cad961adebe7a037ed813                                                                                                                                     0.0s
 => [2/5] WORKDIR /app                                                                                                                                                                                                        0.1s
 => [3/5] COPY requirements.txt .                                                                                                                                                                                             0.0s
 => [4/5] RUN pip install --no-cache-dir -r requirements.txt                                                                                                                                                                 12.6s
 => [5/5] COPY app.py .                                                                                                                                                                                                       0.0s
 => exporting to image                                                                                                                                                                                                        1.6s
 => => exporting layers                                                                                                                                                                                                       0.5s
 => => exporting manifest sha256:e5965c43e35ec60e35185bffb99de0ce07452c139a37ddbedf58146e7a8fa9c9                                                                                                                             0.0s
 => => exporting config sha256:b5594a49d7cf8f7fdf017d67269a795fc4ac2e95c81823974335b3b2547d62aa                                                                                                                               0.0s
 => => exporting attestation manifest sha256:e93ac18cdde5cfecfb9b372b003e10c69e2e283e8b6e2be6629df19e0404b68a                                                                                                                 0.0s
 => => exporting manifest list sha256:58dba124f2934766b34abbb24a251f4ac20cf2459fdc8728c34419d8d8959558                                                                                                                        0.0s
 => => naming to docker.io/syedshah3994/hello-flask:1.0                                                                                                                                                                       0.0s
 => => unpacking to docker.io/syedshah3994/hello-flask:1.0   

(repeat for docker images, pip list, test run)

## Step 5: Push to Docker Hub:
docker tag syedshah3994/hello-flask:1.0 syedshah3994/hello-flask:latest
PS C:\Users\syedshah\Documents\GitHub\Assignment 1> docker push syedshah3994/hello-flask:1.0
The push refers to repository [docker.io/syedshah3994/hello-flask]
75b6a36c64a1: Pushed 
44136fa355b3: Pushed 
ecc510c1e359: Pushed 
8d37250945bf: Pushed 
6912e23eb445: Pushed 
bbc5a1223747: Pushed 
ac1cf2f9dfc1: Pushed 
1030299e456b: Pushed 
42aba27a0fa1: Pushed 
82d0cc8cfbc1: Pushed 
1.0: digest: sha256:58dba124f2934766b34abbb24a251f4ac20cf2459fdc8728c34419d8d8959558 size: 856
PS C:\Users\syedshah\Documents\GitHub\Assignment 1> docker push syedshah3994/hello-flask:latest
The push refers to repository [docker.io/syedshah3994/hello-flask]
75b6a36c64a1: Layer already exists 
8d37250945bf: Already exists 
44136fa355b3: Already exists 
ecc510c1e359: Layer already exists 
6912e23eb445: Layer already exists 
bbc5a1223747: Layer already exists 
ac1cf2f9dfc1: Layer already exists 
1030299e456b: Layer already exists 
42aba27a0fa1: Layer already exists 
82d0cc8cfbc1: Layer already exists 
latest: digest: sha256:58dba124f2934766b34abbb24a251f4ac20cf2459fdc8728c34419d8d8959558 size: 856
PS C:\Users\syedshah\Documents\GitHub\Assignment 1> docker pull syedshah3994/hello-flask:1.0
1.0: Pulling from syedshah3994/hello-flask
Digest: sha256:58dba124f2934766b34abbb24a251f4ac20cf2459fdc8728c34419d8d8959558
Status: Downloaded newer image for syedshah3994/hello-flask:1.0
docker.io/syedshah3994/hello-flask:1.0
