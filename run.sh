#!/usr/bin/env bash

c_dir="cpart/target"
java_dir="jpart/target"
curr_dir="$(dirname "$(readlink -e "$0")")"

cd $java_dir

java -Djava.library.path="$curr_dir/$c_dir" -jar jpart-1.0.jar

cd $curr_dir