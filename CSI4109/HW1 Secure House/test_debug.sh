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

INPUT_CASE="TURN KEY minchan
WHO'S INSIDE?
INSERT KEY minchan Minchan
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
TURN KEY mingeon
ENTER HOUSE mingeon
WHO'S INSIDE?
LEAVE HOUSE mom
WHO'S INSIDE?
LEAVE HOUSE father
WHO'S INSIDE?
LEAVE HOUSE mingeon
WHO'S INSIDE?
CHANGE LOCKS minchan 1 2 3
INSERT KEY minchan 1
TURN KEY minchan
INSERT KEY minchan 2
TURN KEY minchan
INSERT KEY minchan 3
TURN KEY minchan
INSERT KEY minchan Minchan
TURN KEY minchan 
INSERT KEY minchan MinChan
TURN KEY minchan 
INSERT KEY minchan KIM_MIN_CHAN
TURN KEY minchan
INSERT KEY minchan MIN_CHAN
TURN KEY minchan
INSERT KEY minchan
INSERT KEY minchan 1
TURN KEY minchan
INSERT KEY minchan Minchan
ENTER HOUSE mom
TURN KEY minchan
TURN KEY
ENTER HOUSE
INSERT KEY minchan 1
TURN KEY minchan
ENTER HOUSE mom
ENTER HOUSE father
TURN KEY father
ENTER HOUSE father
LEAVE HOUSE
LEAVE HOUSE mingeon
LEAVE HOUSE mom
LEAVE HOUSE father
CHANGE LOCKS minchan
INSERT KEY minchan 1
TURN KEY minchan
CHANGE LOCKS minchan 1 2 3
WHO'S INSIDE? minchan
INSERT KEY minchan@ Minchan
INSERT KEY minchan Minchan!
TURN KEY minchan@
ENTER HOUSE minchan@
LEAVE HOUSE minchan@
CHANGE LOCKS minchan@ 1 2 3 
CHANGE LOCKS minchan 1@ 2 3
INSERT KEY minchan FIREFIGHTER_SECRET_KEY
TURN KEY minchan
ENTER HOUSE minchan 
TURN KEY mom
ENTER HOUSE mom
WHO'S INSIDE?

"

CORRECT_OUTPUT="FAILURE minchan HAD NO KEY INSERTED
NOBODY HOME
KEY Minchan INSERTED BY minchan
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
LOCK CHANGED
KEY 1 INSERTED BY minchan
SUCCESS minchan TURNS KEY 1
KEY 2 INSERTED BY minchan
SUCCESS minchan TURNS KEY 2
KEY 3 INSERTED BY minchan
SUCCESS minchan TURNS KEY 3
KEY Minchan INSERTED BY minchan
FAILURE minchan HAD INVALID KEY Minchan INSERTED
KEY MinChan INSERTED BY minchan
FAILURE minchan HAD INVALID KEY MinChan INSERTED
KEY KIM_MIN_CHAN INSERTED BY minchan
FAILURE minchan HAD INVALID KEY KIM_MIN_CHAN INSERTED
KEY MIN_CHAN INSERTED BY minchan
FAILURE minchan HAD INVALID KEY MIN_CHAN INSERTED
ERROR
KEY 1 INSERTED BY minchan
SUCCESS minchan TURNS KEY 1
KEY Minchan INSERTED BY minchan
ACCESS DENIED
FAILURE minchan HAD INVALID KEY Minchan INSERTED
ERROR
ERROR
KEY 1 INSERTED BY minchan
SUCCESS minchan TURNS KEY 1
ACCESS ALLOWED
ACCESS DENIED
SUCCESS father TURNS KEY 1
ACCESS ALLOWED
ERROR
mingeon NOT HERE
mom LEFT
father LEFT
LOCK CHANGED
KEY 1 INSERTED BY minchan
FAILURE minchan HAD INVALID KEY 1 INSERTED
LOCK CHANGED
ERROR
ERROR
ERROR
ERROR
ERROR
ERROR
ERROR
ERROR
KEY FIREFIGHTER_SECRET_KEY INSERTED BY minchan 
SUCCESS minchan TURNS KEY FIREFIGHTER_SECRET_KEY
ERROR
SUCCESS mom TURNS KEY FIREFIGHTER_SECRET_KEY
ACCESS ALLOWED
minchan, mom
"

echo "Testing your program"
OUTPUT=$( echo -n "$INPUT_CASE" | ./secure_house minchan Minchan MinChan KIM_MIN_CHAN MIN_CHAN)

echo "Your program's output is as follows:"
echo "------------------------------------"
echo "$OUTPUT"
echo "------------------------------------"

DIFF=$(diff -aBw <(echo "$OUTPUT") <(echo "$CORRECT_OUTPUT"))
rc=$?
if [ $rc -ne 0 ]
then
	echo "Error: did not pass the basic test case on the website."
	echo "$DIFF"
else
	echo "SUCCESS!"
fi
