#!/bin/bash


while true
do
    for city in paris rome london
    do
        for user in vip normal
        do
            RESULT=$(curl -H "${TRAVEL_AGENCY_HOST}" -H "user:${user}" -o /dev/null -s -w %{http_code} ${TRAVELS_SERVICE}/travels/${city})
            echo "Travel quota for ${city} from ${user} => $RESULT"
            sleep 1
        done
        RESULT=$(curl -H "${TRAVEL_AGENCY_HOST}" -H "user:${user}" -o /dev/null -s -w %{http_code} ${TRAVELS_SERVICE}/travels/${city})
        echo "Travel quota for ${city} from anonymous => $RESULT"
        sleep 1
    done
done
