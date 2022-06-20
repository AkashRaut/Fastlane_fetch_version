#!/bin/bash

#version from testflight
VERSION=$(awk '{print $6}' a.txt)

#replace . with space
VERSION_BITS=(${VERSION//./ })

#separat the version number and increatment respective number
vMAJOR=${VERSION_BITS[0]}

vMINOR=${VERSION_BITS[1]}

vPATCH=${VERSION_BITS[2]}

vMINOR=$((vMINOR+1))

#Create new tag 
NEW_TAG="$vMAJOR.$vMINOR.$vPATCH"

echo "Updating $VERSION with $NEW_TAG"
