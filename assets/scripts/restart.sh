#!/usr/bin/env bash
INDEXES="{$1}-*"

curl -s -XDELETE "localhost:9200/${INDEXES}" --user elastic:changeme; echo
docker rm -f fb01 ls01
docker-compose up -d ls01 && docker-compose logs -f --tail 500 ls01 | gawk -F " " "/ Beats inputs: Starting input listener/{print;exit}"
docker-compose up -d fb01 && docker-compose logs -f --tail 500 fb01 | gawk -F " " "/established/{print;exit}"
