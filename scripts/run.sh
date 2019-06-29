#!/bin/bash

echo "Running cleaning procedure..."
echo "Started at: $(date)"

THIS_SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "${THIS_SCRIPT_DIR}/environment.sh"

echo "Creating DB now"
source "${THIS_SCRIPT_DIR}/create_db.sh"

echo "Ended at: $(date)"
echo "Cleaning procedure done."
