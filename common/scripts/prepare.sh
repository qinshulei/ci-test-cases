#!/bin/bash

sleep 10

# wait the apt ready.
while (( $(ps -ef | grep '[a]pt' | wc -l) > 0 ));do
    echo -n "."
    sleep 1
done

sleep 10

# wait the apt ready.
while (( $(ps -ef | grep '[a]pt' | wc -l) > 0 ));do
    echo -n "."
    sleep 1
done

sleep 10

# wait the apt ready.
while (( $(ps -ef | grep '[a]pt' | wc -l) > 0 ));do
    echo -n "."
    sleep 1
done

ps aux | grep '[a]pt'

apt-get update
apt-get install htop

lava-test-case prepare-wait-apt --result pass
