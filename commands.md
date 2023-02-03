# Setup node modules
```
cd node && npm install
```

# Put order status in Kafka

    #Login to CloudxLab web console

    cd kafka && /bin/bash put_order_data_in_topic.sh ../data/order_data/ localhost:9092 topic-name


# Run Spark Streaming code

    #Login to CloudxLab web console in the second tab

    cd spark && spark-submit --jars spark-streaming-kafka-assembly_2.10-1.6.0.jar spark_streaming_order_status.py localhost:9092 topic-name


# Run Node.js server

    #Login to CloudxLab web console in the third tab

    cd node && node index
