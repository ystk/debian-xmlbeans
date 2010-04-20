#!/bin/sh -e

# $2 = version
# $3 = file
DIR=xmlbeans-$2.orig
TAR=xmlbeans_$2.orig.tar.gz

# clean up the upstream tarball
tar zxf $3
mv xmlbeans-* $DIR
GZIP=--best tar czf $TAR -X debian/orig-tar.exclude $DIR
rm -rf $DIR

