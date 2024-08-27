FROM alpine
COPY . /
ENTRYPOINT ["tail", "-f", "/dev/null"]
