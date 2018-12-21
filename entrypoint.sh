#!/usr/bin/env bash

PACKAGE_NAME=$(head -n 1 debian/changelog | cut -d' ' -f1)
if [[ $? -ne 0 ]] ; then
    echo "ERROR: Can't define a package name."
    exit 1
fi
dpkg-buildpackage -uc -us -tc

mkdir -p ./dist
cp ../${PACKAGE_NAME}* ./dist -R
chmod a+w -R ./dist

exec "$@"
