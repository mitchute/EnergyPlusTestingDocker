# EnergyPlus Testing Docker
A repo for managing Docker images use for building and running the EnergyPlus test suite.

## BUILD LOCAL DOCKER CONTAINER

$ docker build --target base -t eplustester .

## RUN LOCALLY-BUILT DOCKER CONTAINER

$ docker run -it --rm eplustester /bin/bash
