# Use an official Golang runtime as a parent image
FROM golang:latest

WORKDIR /go/src/app

COPY . /go/src/app
# COPY config /config
# Install protoc and unzip (required to extract protoc-gen-go)
# RUN apt-get update && \
#     apt-get install -y protobuf-compiler unzip
RUN git clone git@github.com:jiocinemadev/data-protobuf-event-schema.git

# RUN go install github.com/golang/protobuf/protoc-gen-go@latest

# RUN protoc \--proto_path=/go/src/app \--go_out=/go/src/app \/go/src/app/*.proto 

# RUN go mod init tutorialpb


