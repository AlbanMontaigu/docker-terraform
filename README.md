# docker-terraform [![Circle CI](https://circleci.com/gh/AlbanMontaigu/docker-terraform.svg?style=shield)](https://circleci.com/gh/AlbanMontaigu/docker-terraform)

## Introduction

Thanks to original project [uzyexe/terraform](https://github.com/uzyexe/dockerfile-terraform).

## What is terraform

Terraform provides a common configuration to launch infrastructure — from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

[https://www.terraform.io/](https://www.terraform.io/)

## Dockerfile

This Docker image is based on the official [alpine](https://hub.docker.com/_/alpine/) base image.

## How to use this image

```
docker run --rm amontaigu/terraform [--version] [--help] <command> [<args>]
```

**Please note:** Create by your Terraform configuration files (.tf) is `/data` directory

# Authors

* Shuji Yamada (<uzy.exe@gmail.com>)
* Alban Montaigu (<alban.montaigu@gmail.com>)

## License

This project is licensed under the terms of the MIT license.
