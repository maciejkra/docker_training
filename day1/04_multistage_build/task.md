# Build & run java spring

`docker image build -t full-spring .`
`docker container run --rm -p 8080:8080 full-spring`

- list files in first image
- list image in extracted

# Build base java image using multistage

`docker image build -t base-java .`


- Use `cp` command for container to copy jar using stage
- Use copied file in second stage to build smaller image

- Check difference in image sizes