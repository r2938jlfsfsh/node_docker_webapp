sudo docker run -d \
    --net=host \
    --name=zookeeper \
    -e ZOOKEEPER_CLIENT_PORT=32181 \
    confluentinc/cp-zookeeper

sudo docker run -d \
    --net=host \
    --name=kafka \
    -e KAFKA_ZOOKEEPER_CONNECT=localhost:32181 \
    -p 29092:29092 \
    -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:29092 \
    confluentinc/cp-kafka

#sudo docker run -d \
#  --net=host \
#  --name=schema-registry \
#  -e SCHEMA_REGISTRY_KAFKASTORE_CONNECTION_URL=localhost:32181 \
#  -e SCHEMA_REGISTRY_HOST_NAME=localhost \
#  -e SCHEMA_REGISTRY_LISTENERS=http://localhost:8081 \
#  confluentinc/cp-schema-registry
#
#sudo docker run -d \
#  --net=host \
#  --name=kafka-rest \
#  -e KAFKA_REST_ZOOKEEPER_CONNECT=localhost:32181 \
#  -e KAFKA_REST_LISTENERS=http://localhost:8082 \
#  -e KAFKA_REST_SCHEMA_REGISTRY_URL=http://localhost:8081 \
#  -e KAFKA_REST_HOST_NAME=localhost \
#  confluentinc/cp-kafka-rest

sleep 5

sudo docker run \
  --net=host \
  --rm confluentinc/cp-kafka \
  kafka-topics --create --topic jobStatus --partitions 1 --replication-factor 1 --if-not-exists --zookeeper localhost:32181 

sudo docker run \
  --net=host \
  --rm confluentinc/cp-kafka \
  kafka-topics --create --topic jobStatusX --partitions 1 --replication-factor 1 --if-not-exists --zookeeper localhost:32181 

sleep 3


sudo docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka \
  kafka-topics --describe --topic jobStatus --zookeeper localhost:32181


sudo docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka \
  kafka-topics --describe --topic jobStatusX --zookeeper localhost:32181

