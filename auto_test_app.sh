#!/bin/bash
set -e

. ./config.cfg
. $SRY_DIR/config.cfg


./run_pybot.sh pybot $PYBOT_VARIABLES --include app valid_app_manage.txt

