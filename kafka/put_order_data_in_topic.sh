set = E:/cloudxlab/kafka_2.12-3.3.1/bin/windows
FILES=E:/cloudxlab/spark/projects/real-time-analytics-dashboard/data/order_data/*.csv
for f in $FILES
do
    echo "pushing $f file"
    cat $f | kafka-console-producer.bat --broker-list localhost:9092 --topic uday
    sleep 60
done