# Docker QGIS Server boilerplate

## Pull the image

```shell
docker pull qgis/qgis-server:ltr
```

## Run the container

```shell
docker run -v ${pwd}/qgis-server-data:/io/data --name qgis-server -d -p 8010:80 qgis/qgis-server:ltr
```

_Note:_ if you are using Docker Desktop on Windows, you may need to replace `${pwd}` with `${PWD}`.

## Add a sample project to the data folder

```shell
./start.sh
```

## Make a WMS GetMap request

```shell
http://localhost:8010/ogc/world?LAYERS=countries&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&CRS=EPSG:4326&WIDTH=400&HEIGHT=200&BBOX=-90,-180,90,180
```

## Docker Compose

Alternatively, you can use Docker Compose to run the container.
You can choose between one of the 2 following options:

### Base image without data

```shell
docker compose up -d qgis-server-base
```

### Custom image with default data

```shell
docker compose up -d qgis-server-data-default
```
