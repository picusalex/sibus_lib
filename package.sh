#!/usr/bin/env bash

echo "Packaging SiBus_Lib...."

if [ -d dist ]; then
    rm -fr dist
fi

if [ -d *.egg-info ]; then
    rm -fr *.egg-info
fi

python setup.py sdist
twine upload dist/*.tar.gz -u picusalex -p o2Q0U6uA5Ap8bzydm7DF

