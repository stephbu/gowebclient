FROM alpine

LABEL com.ea.version="0.0.1-beta"
LABEL vendor="Electronic Arts Incorporated"
LABEL com.ea.release-date="2015-02-12"

WORKDIR /opt/gowebclient

COPY gowebclient /opt/gowebclient/
ENTRYPOINT ["./gowebclient"]
