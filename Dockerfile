FROM scratch
MAINTAINER Julius Blank <dev@juliusblank.de>

ENV BASE_URL="http://hugo.run"
ENV PORT="1313"

ADD https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_linux_amd64.tar.gz hugo

VOLUME /content
WORKDIR /content

EXPOSE $PORT
ENTRYPOINT ["/hugo"]

CMD ["server", "-w", "--baseUrl=$BASE_URL", "--port=$PORT", "--bind=0.0.0.0"]
