# Build & run java spring

`docker image build -t full-spring .`
`docker container run --rm -p 8080:8080 full-spring`

- list files in first image
- list image in extracted

# Build base java image

`docker image build -t base-java .`

- Create container withour run

Default gradle folder is `/home/gradle/`

- Use `cp` command for container to copy jar from container into local machine
- Use copied file in 02_java_build to build smaller image

- Check difference in image sizes