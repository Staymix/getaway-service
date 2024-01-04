#!/bin/bash
docker run -it --name gateway -p 8080:8080 \
  --link currency-1:currency-1 --link currency-2:currency-2 \
  -e EUREKA_HOST="172.17.0.1" \
  -e PROCESSING_URL="http://172.17.0.1:8090" \
  -e CURRENCY_URL="http://172.17.0.1:8086" \
  -d gateway
