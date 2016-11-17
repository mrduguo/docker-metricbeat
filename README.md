## Docker Based Metricbeat Distribution

> https://www.elastic.co/products/beats/metricbeat

## Build

    docker build -t mrduguo/docker-metricbeat .

The image will store the metrics to `/logs/metricbeat/` folder.

## Run With Default Config

 docker run -it --rm -v /logs/metricbeat:/logs/metricbeat -v /proc:/hostfs/proc:ro -v /sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro -v /:/hostfs:ro --net=host mrduguo/docker-metricbeat

## Run With Local Config

 docker run -it --rm -v /logs/metricbeat:/logs/metricbeat -v "$PWD"/metricbeat.yml:/metricbeat.yml -v /proc:/hostfs/proc:ro -v /sys/fs/cgroup:/hostfs/sys/fs/cgroup:ro -v /:/hostfs:ro --net=host mrduguo/docker-metricbeat
