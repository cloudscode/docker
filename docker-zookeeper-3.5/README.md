# zookeeper

Zookeeper installed on top of latest centos container.

This container is build on the latest version of centos.

# Build
``` bash
docker build -t pft/zookeeper:3.5 .
```

# Run
``` bash
docker run --name zookeeper -d  pft/zookeeper:3.5
```