#!/bin/bash
sed -i '".*IP_ADDR" s/$/$IP_ADDR/' /bin/entrypoint.sh
glances -c $IP_ADDR
