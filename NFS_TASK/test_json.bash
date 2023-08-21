key=1
while true; do
    variable=$(ps -awx)
    echo "{\"$key\": \"$variable\"}" >> deleteme.json
    key=$((key + 1))
    sleep 10000  
done