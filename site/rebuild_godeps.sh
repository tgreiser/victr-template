#!/bin/bash
if [ -d Godeps ] ; then
  rm -rf Godeps/;
fi
if [ -d github.com ] ; then
  rm -rf github.com;
fi
if [ -d labix.org ] ; then
  rm -rf labix.org;
fi
$GOPATH/bin/godep save;
rm -rf Godeps/_workspace/src/github.com/clbanning/x2j/examples/;
rm -rf Godeps/_workspace/src/github.com/russross/blackfriday/upskirtref/;
rm -rf Godeps/_workspace/src/github.com/russross/blackfriday/upskirtref_test.go;
rm -rf Godeps/_workspace/src/github.com/stretchr/goweb/example_webapp/;

mv Godeps/_workspace/src/github.com ./;
mv Godeps/_workspace/src/labix.org ./;
rm -rf Godeps;
