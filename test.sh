#! /bin/bash
COMMAND="$@"
echo "Starting display server and waiting 3 seconds"
Xvfb $DISPLAY &
sleep 3
java --version
echo "Running '$COMMAND'"
$COMMAND