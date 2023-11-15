#!/bin/bash

displayTime() {
    local elapsed_seconds=$1
    local hours=$((elapsed_seconds / 3600))
    local minutes=$(( (elapsed_seconds % 3600) / 60))
    local seconds=$((elapsed_seconds % 60))

    echo "Time Elapsed: ${hours}h ${minutes}m ${seconds}s"
}

echo "Starting building project..."
start_time=$(date +%s)

npm install
npm run build

yarn install
yarn run build

end_time=$(date +%s)


result=$((end_time - start_time))
displayTime $result
