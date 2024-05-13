#!/bin/bash
echo "checking for README"
if [ ! -e "./README" ]
then
        echo "Error: No README file"
        exit 1
fi

echo "checking for Makefile"
if [ ! -e "./Makefile" ]
then
        echo "Error: No Makefile file"
        exit 1
fi

echo "Running make"
make
rc=$?
if [ $rc -ne 0 ]
then
        echo "Error when running the make command"
        exit 1
fi

echo "Running make again"
make
rc=$?
if [ $rc -ne 0 ]
then
        echo "Error when running the make command again"
        exit 1
fi

if [ ! -e "./mac" ]
then
        echo "Error: Running make did not create the mac file"
        exit 1
fi

if [ ! -x "./mac" ]
then
        echo "Error: mac is not executable"
        exit 1
fi

echo "set owner"
make owner

echo "set permission"
make permission

echo "clean"
make clean

E=./mac
R=read
W=write
D1=top_secret.data
D2=secret.data
D3=confidential.data
D4=unclassified.data
A=PASS

if [ "$USER" = "ursamajor" ]; then
    echo "test for ursamajor"
    echo "--------------------------------------------" 
    echo "$R $D1"
    OUTPUT=$($E $R $D1)
    A1=$(sudo cat $D1)
    if [ "$OUTPUT" = "$A1" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A1"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D2"
    OUTPUT=$($E $R $D2)
    A2=$(sudo cat $D2)
    if [ "$OUTPUT" = "$A2" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A2"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D3"
    OUTPUT=$($E $R $D3)
    A3=$(sudo cat $D3)
    if [ "$OUTPUT" = "$A3" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A3"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D4"
    OUTPUT=$($E $R $D4)
    A4=$(sudo cat $D4)
    if [ "$OUTPUT" = "$A4" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A4"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D1"
    OUTPUT=$($E $W $D1 $USER)
    A5=""
    if [ "$OUTPUT" = "$A5" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A5"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D2"
    OUTPUT=$($E $W $D2 $USER)
    A6="ACCESS DENIED"
    if [ "$OUTPUT" = "$A6" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A6"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D3"
    OUTPUT=$($E $W $D3 $USER)
    A7="ACCESS DENIED"
    if [ "$OUTPUT" = "$A7" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A7"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D4"
    OUTPUT=$($E $W $D4 $USER)
    A8="ACCESS DENIED"
    if [ "$OUTPUT" = "$A8" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A8"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "check for log file contents"
    A9="$R $D1
$R $D2
$R $D3
$R $D4
$W $D1
$W $D2
$W $D3
$W $D4"
    OUTPUT=$(sudo cat $USER.log)
    if [ "$OUTPUT" = "$A9" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A9"
        echo "Got: $OUTPUT"
    fi
    echo "check for log file owner and permission"
    OUTPUT1=$(stat -c '%U %G' $USER.log)
    OUTPUT2=$(stat -c '%a' $USER.log )
    A10="$USER $USER"
    A11="640"
    if [ "$OUTPUT1" = "$A10" ] && [ "$OUTPUT2" = "$A11" ]; then
        echo "Test passed!"
    else
        A=FAIL
    fi

    echo "--------------------------------------------"

elif [ "$USER" = "test1" ]; then
    echo "test for test1"
    echo "--------------------------------------------" 
    echo "$R $D1"
    OUTPUT=$($E $R $D1)
    A1="ACCESS DENIED"
    if [ "$OUTPUT" = "$A1" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A1"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D2"
    OUTPUT=$($E $R $D2)
    A2=$(sudo cat $D2)
    if [ "$OUTPUT" = "$A2" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A2"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D3"
    OUTPUT=$($E $R $D3)
    A3=$(sudo cat $D3)
    if [ "$OUTPUT" = "$A3" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A3"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D4"
    OUTPUT=$($E $R $D4)
    A4=$(sudo cat $D4)
    if [ "$OUTPUT" = "$A4" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A4"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D1"
    OUTPUT=$($E $W $D1 $USER)
    A5=""
    if [ "$OUTPUT" = "$A5" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A5"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D2"
    OUTPUT=$($E $W $D2 $USER)
    A6=""
    if [ "$OUTPUT" = "$A6" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A6"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D3"
    OUTPUT=$($E $W $D3 $USER)
    A7="ACCESS DENIED"
    if [ "$OUTPUT" = "$A7" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A7"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D4"
    OUTPUT=$($E $W $D4 $USER)
    A8="ACCESS DENIED"
    if [ "$OUTPUT" = "$A8" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A8"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "check for log file contents"
    A9="$R $D1
$R $D2
$R $D3
$R $D4
$W $D1
$W $D2
$W $D3
$W $D4"
    OUTPUT=$(sudo cat $USER.log)
    if [ "$OUTPUT" = "$A9" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A9"
        echo "Got: $OUTPUT"
    fi
    echo "check for log file owner and permission"
    OUTPUT1=$(stat -c '%U %G' $USER.log)
    OUTPUT2=$(stat -c '%a' $USER.log )
    A10="$USER $USER"
    A11="640"
    if [ "$OUTPUT1" = "$A10" ] && [ "$OUTPUT2" = "$A11" ]; then
        echo "Test passed!"
    else
        A=FAIL
    fi

    echo "--------------------------------------------"

elif [ "$USER" = "test2" ]; then
    echo "test for test2"
    echo "--------------------------------------------" 
    echo "$R $D1"
    OUTPUT=$($E $R $D1)
    A1="ACCESS DENIED"
    if [ "$OUTPUT" = "$A1" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A1"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D2"
    OUTPUT=$($E $R $D2)
    A2="ACCESS DENIED"
    if [ "$OUTPUT" = "$A2" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A2"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D3"
    OUTPUT=$($E $R $D3)
    A3=$(sudo cat $D3)
    if [ "$OUTPUT" = "$A3" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A3"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D4"
    OUTPUT=$($E $R $D4)
    A4=$(sudo cat $D4)
    if [ "$OUTPUT" = "$A4" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A4"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D1"
    OUTPUT=$($E $W $D1 $USER)
    A5=""
    if [ "$OUTPUT" = "$A5" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A5"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D2"
    OUTPUT=$($E $W $D2 $USER)
    A6=""
    if [ "$OUTPUT" = "$A6" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A6"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D3"
    OUTPUT=$($E $W $D3 $USER)
    A7=""
    if [ "$OUTPUT" = "$A7" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A7"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D4"
    OUTPUT=$($E $W $D4 $USER)
    A8="ACCESS DENIED"
    if [ "$OUTPUT" = "$A8" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A8"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "check for log file contents"
    A9="$R $D1
$R $D2
$R $D3
$R $D4
$W $D1
$W $D2
$W $D3
$W $D4"
    OUTPUT=$(sudo cat $USER.log)
    if [ "$OUTPUT" = "$A9" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A9"
        echo "Got: $OUTPUT"
    fi
    echo "check for log file owner and permission"
    OUTPUT1=$(stat -c '%U %G' $USER.log)
    OUTPUT2=$(stat -c '%a' $USER.log )
    A10="$USER $USER"
    A11="640"
    if [ "$OUTPUT1" = "$A10" ] && [ "$OUTPUT2" = "$A11" ]; then
        echo "Test passed!"
    else
        A=FAIL
    fi

    echo "--------------------------------------------"

elif [ "$USER" = "test3" ]; then
    echo "test for test3"
    echo "--------------------------------------------" 
    echo "$R $D1"
    OUTPUT=$($E $R $D1)
    A1="ACCESS DENIED"
    if [ "$OUTPUT" = "$A1" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A1"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D2"
    OUTPUT=$($E $R $D2)
    A2="ACCESS DENIED"
    if [ "$OUTPUT" = "$A2" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A2"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D3"
    OUTPUT=$($E $R $D3)
    A3="ACCESS DENIED"
    if [ "$OUTPUT" = "$A3" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A3"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$R $D4"
    OUTPUT=$($E $R $D4)
    A4=$(sudo cat $D4)
    if [ "$OUTPUT" = "$A4" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A4"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D1"
    OUTPUT=$($E $W $D1 $USER)
    A5=""
    if [ "$OUTPUT" = "$A5" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A5"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D2"
    OUTPUT=$($E $W $D2 $USER)
    A6=""
    if [ "$OUTPUT" = "$A6" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A6"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D3"
    OUTPUT=$($E $W $D3 $USER)
    A7=""
    if [ "$OUTPUT" = "$A7" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A7"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "$W $D4"
    OUTPUT=$($E $W $D4 $USER)
    A8=""
    if [ "$OUTPUT" = "$A8" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A8"
        echo "Got: $OUTPUT"
    fi
    echo "--------------------------------------------"
    echo "check for log file contents"
    A9="$R $D1
$R $D2
$R $D3
$R $D4
$W $D1
$W $D2
$W $D3
$W $D4"
    OUTPUT=$(sudo cat $USER.log)
    if [ "$OUTPUT" = "$A9" ]; then
        echo "Test passed!"
    else
        A=FAIL
        echo "Test failed!"
        echo "Expected: $A9"
        echo "Got: $OUTPUT"
    fi
    echo "check for log file owner and permission"
    OUTPUT1=$(stat -c '%U %G' $USER.log)
    OUTPUT2=$(stat -c '%a' $USER.log )
    A10="$USER $USER"
    A11="640"
    if [ "$OUTPUT1" = "$A10" ] && [ "$OUTPUT2" = "$A11" ]; then
        echo "Test passed!"
    else
        A=FAIL
    fi

    echo "--------------------------------------------"
fi

if [ "$A" = "PASS" ];then
    echo "ALL TEST PASSED FOR $USER"
else
    echo "SOME TEST FAIL FOR $USER"
fi

# make ursa