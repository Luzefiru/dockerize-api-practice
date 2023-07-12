# My Answer - Setup

```bash
cd dockerize-api-practice
docker build . -t dockerize-api-practice
docker run -p 4000:4000 dockerize-api-practice

# alternatively with Docker Compose

cd dockerize-api-practice
docker compose up
```

# Output

Via manually building the Dockerfile image with `docker build .`:

```bash
$ docker build . -t dockerize-api-practice
[+] Building 11.6s (9/9) FINISHED                                                                            docker:default
 => [internal] load .dockerignore                                                                                      0.0s
 => => transferring context: 91B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                   0.0s
 => => transferring dockerfile: 199B                                                                                   0.0s
 => [internal] load metadata for docker.io/library/node:16-alpine3.17                                                  5.9s
 => [1/4] FROM docker.io/library/node:16-alpine3.17@sha256:77e07be8ecf734e337b1b7d8eaa44abcb87320decffc030ad073354e60  0.0s
 => [internal] load build context                                                                                      0.1s
 => => transferring context: 82.98kB                                                                                   0.1s
 => CACHED [2/4] WORKDIR /usr/src/app                                                                                  0.0s
 => [3/4] COPY --chown=node:node . .                                                                                   0.0s
 => [4/4] RUN npm install                                                                                              5.4s
 => exporting to image                                                                                                 0.1s
 => => exporting layers                                                                                                0.1s
 => => writing image sha256:f90f1476e0c6006902a7fd99224a49ddcb23074864e0a0af3290938e5958eb47                           0.0s
 => => naming to docker.io/library/dockerize-api-practice                                                              0.0s

What's Next?
  View summary of image vulnerabilities and recommendations → docker scout quickview

$ docker run -p 4000:4000 dockerize-api-practice
Example app listening on port 4000!
```

Via Docker Compose:

```bash
$ docker compose up
[+] Building 8.8s (9/9) FINISHED
 => [api internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 91B                                                                                       0.0s
 => [api internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 199B                                                                                   0.0s
 => [api internal] load metadata for docker.io/library/node:16-alpine3.17                                              2.3s
 => [api 1/4] FROM docker.io/library/node:16-alpine3.17@sha256:77e07be8ecf734e337b1b7d8eaa44abcb87320decffc030ad07335  0.0s
 => [api internal] load build context                                                                                  0.0s
 => => transferring context: 9.68kB                                                                                    0.0s
 => CACHED [api 2/4] WORKDIR /usr/src/app                                                                              0.0s
 => [api 3/4] COPY --chown=node:node . .                                                                               0.0s
 => [api 4/4] RUN npm install                                                                                          6.3s
 => [api] exporting to image                                                                                           0.1s
 => => exporting layers                                                                                                0.1s
 => => writing image sha256:c7659513f3402c081b259f6623076ed5e9a47d5a95b291110da9625b052eb2eb                           0.0s
 => => naming to docker.io/library/dockerize-api-practice-api                                                          0.0s
[+] Running 2/2
 ✔ Network dockerize-api-practice_default  Created                                                                     0.3s
 ✔ Container dockerize-api-practice-api-1  Created                                                                     0.0s
Attaching to dockerize-api-practice-api-1
dockerize-api-practice-api-1  | Example app listening on port 4000!
```
