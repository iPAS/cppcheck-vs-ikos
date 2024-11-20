#!/bin/bash

in_file=example.c
db_file=example.db
analyses=boa,dbz,nullity,prover,upa,uva,sio,uio,shc,poa,pcmp,sound,fca,dca,dfa,dbg,watch
#ikos-scan --compile example.c -o example.bc
ikos -v --rm-db --format web --report-verbosity 4 --log all \
  --analyses $analyses \
  --output-db $db_file \
  $in_file
#ikos-view example.db
rm -f $db_file
