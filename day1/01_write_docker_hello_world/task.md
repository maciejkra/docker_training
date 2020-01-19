# Write first Hello world image and build it

Create Dockerfile
Use base image *alpine:3.6*


```Dockerfile
FROM <?>
CMD <?>
```

Execute in folder with Dockerfile
```sh
docker image build -t <name> .
```

## Complete each task

1. Use only ENTRYPOINT, build & run
2. Use only CMD, build & run
3. Combine ENTRYPOINT+CMD & verify that:


```
docker container run my-image
```
should display *Hellow World*


```
docker container run my-image Maciej
```
should display *Hello Maciej*

## Name & Find your container

1. Run container with name
2. Find container & finds its logs

```sh
docker container logs <?>
```