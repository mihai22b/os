FROM docker.io/library/ubuntu:rolling
RUN ["mkdir", "-p", "/root/os/linux/container"]
WORKDIR /root/os/linux/container
COPY ["linux/container/root.sh", "."]
RUN ["./root.sh"]

USER user:user
WORKDIR /home/user
RUN ["mkdir", "os"]
WORKDIR /home/user/os
COPY --chown=user:user [".", "."]
RUN ["linux/container/user.sh"]
# run the idempotent command again to check that it succeeds
RUN ["linux/container/user.sh"]
