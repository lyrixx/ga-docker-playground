# GitHub Action Playground with Docker Container & Registry

This repository is a playground to show how GitHub Action can build Docker
images and push them to GitHub Container Registry.

## Project description

There are two applications. They are juste Nginx container, with a static `index.html`.

* `app_1` uses `index.html` from this repository.
* `app_2` uses `index2.html` from this repository.

## Run the project locally

There are two options.

The fastest one is to use the image from the GitHub Container Registry.

```
docker-compose pull
docker-compose up
```

And the one, when you want to update some Docker file

```
docker-compose up --build
```

## Run the project remotely

Configure the registry in your scheduler, and use the image directly

* `app_1`: `ghcr.io/lyrixx/test-app-1`
* `app_2`: `ghcr.io/lyrixx/test-app-2`

## Image tagging

Each commits on the `main` branch, each tags, and PRs are tagged.

This project follow the
[semver](https://github.com/docker/metadata-action#semver) convention.

## CI

The CI build then upload the image to the GitHub Container Registry.

Then is test that each application returns something
