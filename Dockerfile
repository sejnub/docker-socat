FROM hypriot/rpi-alpine

RUN apk add --no-cache socat 

ENTRYPOINT socat -v UDP4-RECVFROM:514,fork TCP:logstash.internal:515

EXPOSE 514/udp
