FROM alpine:latest
MAINTAINER wmwofficial@gmail.com

WORKDIR /app

RUN apk add --no-cache poppler-qt5 qt5-qtbase-dev
ADD YACReaderLibraryServer entrypoint.sh /app/
ADD YACReaderLibrary.ini /root/.local/share/YACReader/YACReaderLibrary/

VOLUME /comics

EXPOSE 8080

ENV LC_ALL=C.UTF8

ENTRYPOINT ["/app/entrypoint.sh"]
