#!/bin/bash
python -m glances -C /glances/conf/glances.conf $GLANCES_OPT
tail -f /tmp/glances-root.log
