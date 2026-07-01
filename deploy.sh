current_datetime=$(date)

# Write the timestamp to a file (overwrites existing content)
mkdir -p build
echo "Date de deploiement: $current_datetime" >build/deploy.log
