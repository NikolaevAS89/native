#!/bin/bash
if [ -z "$JAVA_HOME" ]; then
    export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")
fi

#print java home directory
echo "Using JAVA_HOME $JAVA_HOME"

#absolut path of currently directory
CURR_DIR="$(dirname "$(readlink -e "$0")")"
echo "work directory is ${CURR_DIR}"

#directory with class files
SOURCE_DIR=$CURR_DIR/target/classes

#directory with native part of project
TARGET_DIR="$(echo $CURR_DIR|sed -e 's/jpart/cpart/')/src"

echo "output directory is ${TARGET_DIR}"
cd $SOURCE_DIR
echo "__________________________________"
#in loop read file with java class list
while IFS='' read -r line || [[ -n $line ]];
do
    $JAVA_HOME/bin/javah -verbose -jni -d "$TARGET_DIR" $line
    echo ".................................."
done<"$CURR_DIR/jni_classes"
#return into start directory
cd $CURR_DIR