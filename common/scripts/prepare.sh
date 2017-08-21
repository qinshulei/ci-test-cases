#!/bin/bash

sleep 5

# wait the apt ready.
while (( $(ps -ef | grep '[a]pt-get' | wc -l) > 0 ));do
    echo -n "."
    sleep 1
done

lava-test-case prepare-wait-apt --result pass
