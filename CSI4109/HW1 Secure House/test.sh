#!/bin/bash

set +x
set +e

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

if [ ! -e "./secure_house" ]
then
        echo "Error: Running make did not create the secure_house file"
        exit 1
fi

if [ ! -x "./secure_house" ]
then
        echo "Error: secure_house is not executable"
        exit 1
fi

INPUT_CASE="INSERT KEY minchan Minchan
TURN KEY minchan
ENTER HOUSE minchan
WHO'S INSIDE?
INSERT KEY mom MinChan
TURN KEY mom
ENTER HOUSE mom
WHO'S INSIDE?
INSERT KEY father KIM_MIN_CHAN
TURN KEY father
ENTER HOUSE father
WHO'S INSIDE?
INSERT KEY mingeon MIN_CHAN
TURN KEY mingeon MIN_CHAN
ENTER HOUSE mingeon
WHO'S INSIDE?
LEAVE HOUSE mom
WHO'S INSIDE?
LEAVE HOUSE father
WHO'S INSIDE?
LEAVE HOUSE mingeon
WHO'S INSIDE?

"

CORRECT_OUTPUT="KEY Minchan INSERTED BY minchan
SUCCESS minchan TURNS KEY Minchan
ACCESS ALLOWED
minchan
KEY MinChan INSERTED BY mom
SUCCESS mom TURNS KEY MinChan
ACCESS ALLOWED
minchan, mom
KEY KIM_MIN_CHAN INSERTED BY father
SUCCESS father TURNS KEY KIM_MIN_CHAN
ACCESS ALLOWED
minchan, mom, father
KEY MIN_CHAN INSERTED BY mingeon
SUCCESS mingeon TURNS KEY MIN_CHAN
ACCESS ALLOWED
minchan, mom, father, mingeon
mom LEFT
minchan, father, mingeon
father LEFT
minchan, mingeon
mingeon LEFT
minchan
"

echo "Testing your program"
OUTPUT=$( echo -n "$INPUT_CASE" | ./secure_house minchan Minchan MinChan KIM_MIN_CHAN MIN_CHAN)

DIFF=$(diff -aBw <(echo "$OUTPUT") <(echo "$CORRECT_OUTPUT"))
rc=$?
if [ $rc -ne 0 ]
then
	echo "Error: did not pass the basic test case on the website."
	echo "$DIFF"
else
	echo "SUCCESS!"
fi
