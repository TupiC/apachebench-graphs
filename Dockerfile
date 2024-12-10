FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    apache2-utils \
    gnuplot \
    bash \
    sed

COPY . /app

WORKDIR /app

RUN chmod +x ab-graph.sh ab-graph_merge.sh ab-graph_scale.sh

ENTRYPOINT ["/bin/bash"]
