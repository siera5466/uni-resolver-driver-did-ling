FROM golang:1.22.2-alpine
MAINTAINER K4Security <contact@k4-security.com>

# env variables
ENV GO111MODULE=auto

WORKDIR /app
COPY src/ling-client .

RUN go get -d -v ./...
RUN go install -v ./...

RUN go build -o ling-client *.go
RUN chmod +x ling-client
#CMD batch.sh & cmd

# entrypoint.sh 파일을 컨테이너에 복사
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

EXPOSE 9800
ENTRYPOINT ["/app/entrypoint.sh"]
