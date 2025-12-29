FROM docker.io/devkitpro/devkitarm:20250527 as base
COPY .bashrc /tmp/.bashrc
RUN cat /tmp/.bashrc >> /root/.bashrc
RUN cat /root/.bashrc

RUN mkdir /devkitpro
WORKDIR /devkitpro

FROM scratch as export-libctru
COPY --from=base /opt/devkitpro/libctru/include /include 
COPY --from=base /opt/devkitpro/devkitARM/arm-none-eabi/include /include

FROM base as release
