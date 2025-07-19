FROM devkitpro/devkitarm:20250527
COPY .bashrc /tmp/.bashrc
RUN cat /tmp/.bashrc >> /root/.bashrc
RUN cat /root/.bashrc

RUN mkdir /devkitpro
WORKDIR /devkitpro

ENTRYPOINT ["bash"]
