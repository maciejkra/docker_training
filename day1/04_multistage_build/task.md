# Build & run java spring

`docker image build -t full-spring ./full_file`

`docker container run --rm -p 8080:8080 full-spring`

# Build base java image using multistage

`docker image build -t base-java -f Dockerfile.multi ./full_file`
