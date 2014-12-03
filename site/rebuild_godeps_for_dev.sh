#!/bin/bash
./rebuild_godeps.sh;

cd github.com/tgreiser;
rm -rf victr;
git clone https://github.com/tgreiser/victr.git
