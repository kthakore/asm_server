FROM alpine:3.8

WORKDIR /app

COPY rwasa .

RUN chmod a+x rwasa

EXPOSE 8222

CMD ./rwasa -cpu 4 -foreground -bind 0.0.0.0:8222