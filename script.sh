#!/bin/bash
cd ~/system1
cat data.txt
openssl dgst -sha256 -sign ~/system1/privatekey.pem -out ~/system1/signkey.txt data.txt
openssl rsautl -encrypt -pubin -inkey ~/system1/publickey.pem -in data.txt -out data.enc
openssl rsautl -decrypt -inkey ~/system1/privatekey.pem -in data.enc -out data.dec

