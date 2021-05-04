FROM ghcr.io/shun2992/raspios-buster-armhf-lite:latest

ARG DEBIAN_FRONTEND=noninteractive

# For avahi-daemon
RUN service dbus start

RUN apt-get update && apt-get upgrade -y \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
