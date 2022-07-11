#!/bin/bash

pow () {
    result=$(($1**$2))
    echo $result
}

shortest () {
    total=$#
    arguments=( $@ )
    shortest_string_lenght=${#arguments[0]}
    shortest_string_number=0

    for (( i=0; i<$total; i++ ))
    do
        current_string=${arguments[$i]}
        if [[ ${#current_string} < $shortest_string_lenght ]]
        then
            shortest_string_lenght=${#current_string}
        fi
    done

    for (( i=0; i<$total; i++ ))
    do
        current_string=${arguments[$i]}
        if [[ ${#current_string} == $shortest_string_lenght ]]
        then
            echo $current_string
        fi
    done
}

print_log () {
    now=$(date +%F" "%R)
    echo "["$now"]" $1
}
