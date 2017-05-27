# Alpine Android / Docker 

[![Docker Status][docker-shield]][docker-link] [![Docker Pulls][pulls-shield]][pulls-link] [![Layers][layers-shield]][layers-link] [![Version][version-shield]][version-link]

A minimal Android [Docker](https://www.docker.com/) image based on [Alpine Linux](https://hub.docker.com/r/_/alpine/) and [OpenJDK 8](https://hub.docker.com/r/greyfoxit/alpine-openjdk8/)

## Content &nbsp;/

- Alpine ( **3.6** )
- OpenJDK 8 ( **8u131** )
- Android SDK ( **7.1.1, API 25, revision 3** )
- Android SDK Platform-Tools ( **25.0.6** )
- Android SDK Build-Tools ( **25.0.3** )
- Android SDK Tools ( **25.2.5** )
- Google Play Services ( **revision 40** )
- Google Repository ( **revision 51**)
- add-ons: **bash**

## Use this &nbsp;>

### as base image

exactly as you would with any other docker image inside `Dockerfile`

```Dockerfile
FROM greyfoxit/alpine-android
```

### as pull from Docker Hub

```sh
$ docker pull greyfoxit/alpine-android
```

### as local build

```sh
$ git clone https://github.com/greyfoxit/alpine-android.git && cd alpine-android 
$ docker build --no-cache -t greyfoxit/alpine-android .
```

### as running container

```sh
$ docker run --rm -it greyfoxit/alpine-android
```

## Support

Please [file an issue](https://github.com/greyfoxit/alpine-android/issues) on Github

## License

Released under the [MIT License](#LICENSE) by Greyfox, Inc.

[docker-shield]: https://img.shields.io/docker/build/greyfoxit/alpine-android.svg
[docker-link]: https://hub.docker.com/r/greyfoxit/alpine-android/

[pulls-shield]: https://img.shields.io/docker/pulls/greyfoxit/alpine-android.svg
[pulls-link]: https://hub.docker.com/r/greyfoxit/alpine-android/

[layers-shield]: https://images.microbadger.com/badges/image/greyfoxit/alpine-android.svg
[layers-link]: https://microbadger.com/images/greyfoxit/alpine-android

[version-shield]: https://images.microbadger.com/badges/version/greyfoxit/alpine-android.svg
[version-link]: https://microbadger.com/images/greyfoxit/alpine-android
