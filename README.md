# docker-mailcatcher

[![](https://badge.imagelayers.io/jpreuss/mailcatcher:latest.svg)](https://imagelayers.io/?images=jpreuss/mailcatcher:latest)

Docker image for MailCatcher based on Alpine linux. You can find images on docker hub [jpreuss/mailcatcher](https://hub.docker.com/r/jpreuss/mailcatcher/).

## Usage

To use, simply run:

```shell
$ docker run -p 1080:80 -p 1025:25 jpreuss/mailcatcher
```

As a SMTP server set `localhost` with port 1025.

All outgoing e-mails will be catched and shown in web interface on [http://localhost:1080](http://localhost:1080).