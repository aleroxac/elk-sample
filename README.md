# elk-sample
![Elastic Stack](assets/images/elasticsearch-logo.png)
Stack ELK with logs, pipelines and settings to work in POCs.


## Resources available
- docker-compose.yml with elasticsearch, logstash, kibana and filebeat
- Service to generate fake logs to be parsed by logstash pipeline
- Basic elasticsearch, logstash, kibana and filebeat config files
- Pipeline to parse apache logs
- Script to destroy and up filebeat and logstash containers, to reindex all logs from scratch


## Setup
``` shell
## Installing Docker
curl -fsSL https://get.docker.com | bash

### Installing docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## Running the docker-compose
docker-compose up -d
```