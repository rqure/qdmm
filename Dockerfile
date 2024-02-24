FROM docker

ENTRYPOINT ["docker"]

CMD ["run", "-i", "--rm", "--privileged", "--cgroupns=host", "--pid=host", "--userns=host", "-v", "/sys:/host/sys", "-v", "/var/run/docker.sock:/var/run/docker.sock", "-v", "/dev:/dev", "ghcr.io/allfro/allfro/device-mapping-manager:latest"]
