#!/bin/bash
if [ "$DUPLICATI__PARSED_RESULT" != "Success" ]
then
    curl -s -X POST -H 'Content-type: application/json' --data '{"text":"There was a problem with the '$DUPLICATI__backup_name' backup!"}' ${SLACK_WEBHOOK}
fi
