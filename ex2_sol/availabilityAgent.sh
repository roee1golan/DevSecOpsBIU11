TEST_PERIODICITY=5

while true
do
  # Mission1:
  while read TESTED_HOST; do
    # Mission2:
    # (If successful, RESULT will be equal to 1, else to 0)
    ping $TESTED_HOST -c 1 -W 1 &> /dev/null
    if [[ $? -ne 0 ]]; then
      RESULT=0
    else
      RESULT=1
    fi

    # Get the timestamp (nanoseconds)
    TEST_TIMESTAMP="$(date +%s%N)"

    # Mission 3 + Mission 7:
    PING_LATENCY="$(ping $TESTED_HOST -c1 | head -n 2 | tail -n 1 | echo "$(awk 'BEGIN {FS="[=]|ms"} {print $4}')sec")"
    # If there is no result = output 0
    if [[ $PING_LATENCY = "sec" ]]
    then
      PING_LATENCY=0
    fi

    echo "Test result for $TESTED_HOST is $PING_LATENCY at $TEST_TIMESTAMP"

    # Mission 4:
    curl -X POST 'http://localhost:8086/write?db=hosts_metrics' --data-binary "availability_test,host=$TESTED_HOST value=$RESULT $TEST_TIMESTAMP"

  done <hosts

  # The loop body will be executed every TEST_PERIODICITY.
  sleep "$TEST_PERIODICITY"

done