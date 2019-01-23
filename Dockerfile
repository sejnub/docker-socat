FROM hypriot/rpi-alpine

RUN apk add --no-cache socat 

ENTRYPOINT socat -v UDP-LISTEN:514,fork TCP:syslog.internal:515

EXPOSE 514/udp
