#!/bin/bash

echo "Dump data from cleaned database..."

THIS_SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "${THIS_SCRIPT_DIR}/environment.sh"

DUMP_FILE="${CLEANED_DB_DUMPS_PATH}/cleaned_db.sql.gz"
if [[ -f ${DUMP_FILE} ]];
then
    echo "Removing existing dump file ${DUMP_FILE} ..."
    rm ${DUMP_FILE}
fi

DUMP_FC_FILE="${CLEANED_DB_DUMPS_PATH}/cleaned_db_Fc.sql.gz"
if [[ -f ${DUMP_FC_FILE} ]];
then
    echo "Removing existing dump file ${DUMP_FC_FILE} ..."
    rm ${DUMP_FC_FILE}
fi

set -e

echo "Preparing regular dump..."
pg_dump -U ${DATABASE_USER} -d ${DATABASE_NAME} | gzip > ${DUMP_FILE}

echo "Preparing dump with -Fc options..."
pg_dump -U ${DATABASE_USER} -d ${DATABASE_NAME} -Fc  | gzip > ${DUMP_FC_FILE}

echo "Dump data from cleaned database done."
