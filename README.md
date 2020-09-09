# laravel-on-docker

## Introduction

Build a simple laravel development environmen.

## Requirements

- Ubuntu 20.04
- Docker
- Docker-composer

<br />

## Install docker & docker-composer

```bash
$ sudo apt-get install build-essential

$ sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

$ sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

$ sudo apt-key fingerprint 0EBFCD88

$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

$ sudo apt-get update

$ sudo apt-get install -y docker-ce docker-ce-cli containerd.io

$ sudo usermod -a -G docker <your_user>

$ log out and back in.
```

<br />

## Usage

```bash
$ make setup # Setup

$ make destroy # Destroy all - data will be lost

$ make up # docker-composer up

$ make down # docker-composer down

$ make stop # docker-composer stop
```