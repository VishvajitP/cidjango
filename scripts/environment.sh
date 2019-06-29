#!/bin/bash

# load configuration values into environment once.
if [[ ${CLEANED_DB_ENV_LOADED} == 1 ]];
then
    echo 'Configuration values already loaded.'
else
    echo 'Load configuration values into environment once...'

    # Local database settings:
    export CLEANED_DB_LOC_USER='devel'
    export CLEANED_DB_LOC_PASS='g1mM3Th4tdB_'
    export CLEANED_DB_LOC_HOST='127.0.0.1'
    export CLEANED_DB_LOC_NAME='test_db'

    export DATABASE_USER="${CLEANED_DB_LOC_USER}"
    export DATABASE_PASSWORD="${CLEANED_DB_LOC_PASS}"
    export DATABASE_HOST="${CLEANED_DB_LOC_HOST}"
    export DATABASE_NAME="${CLEANED_DB_LOC_NAME}"

    export CLEANED_DB_ENV_LOADED=1
    echo 'Configuration values loaded!'
fi
