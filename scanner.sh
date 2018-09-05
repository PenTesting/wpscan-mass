#!/bin/bash

domains='domain1.com domain2.com'

for n in $domains; do

    echo -e "\nScanning $n ... "
    wpscan  --url $n \
        --batch \
        --no-color > $n.scan.log

done
