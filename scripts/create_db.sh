#!/bin/bash

echo 'Create empty local db for data cleaning purposes...'

THIS_SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "${THIS_SCRIPT_DIR}/environment.sh"

dropdb --if-exists -U ${DATABASE_USER} ${DATABASE_NAME} &&
echo 'Previous database dropped.'

set -e

createdb -U ${DATABASE_USER} -O ${DATABASE_USER} -E UTF8 ${DATABASE_NAME}

echo "Database ${DATABASE_NAME} created!"
