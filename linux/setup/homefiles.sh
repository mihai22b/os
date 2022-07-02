#! /usr/bin/env bash

set -eu -o pipefail

SCRIPT=`realpath "${BASH_SOURCE[0]}"`
SCRIPT_DIR=`dirname "$SCRIPT"`
cd "$SCRIPT_DIR"
unset SCRIPT SCRIPT_DIR

cp --no-target-directory --recursive homefiles ~
