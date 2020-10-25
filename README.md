# php-cloud-dev-environment

This is a PHP development environment inside a docker container, the environment has everything you need to get starting developing php right away. 
The container comes with Visual studio code installed already. 

## Get started

The easiest way to get started is to create a docker-compose.yaml
You will need to the following in your compose file.

- The image to starte the container.
- The ports that needs to be exposed to your host machine.
- Environment variables.
  - Password for authencitation.
  - Port for which VS-code should use.
- [OPTIONAL] container name

### Image

You can either build your own image from the Dockerfile that is included or you can download the images that has already been built.

#### Downloading pre-built image

If you want to use the pre-built image you can just download it by running following command

    docker pull docker.pkg.github.com/zobairq/php-cloud-dev-environment/php-cloud-dev-environment:0.1

#### Building your own image

If you wish to build the image yourself, you can do it using the Dockerfile.

First you need to clone this repository and change your directory to into the repo.

    git clone https://github.com/ZobairQ/php-cloud-dev-environment.git && cd php-cloud-dev-environment

then you build the building by running following command

    docker build -t php-dev .
This will build and name the image to `php-dev`

### Docker-compose

