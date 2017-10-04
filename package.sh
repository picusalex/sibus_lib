#!/usr/bin/env bash


echo " # Cleaning previous packages"
rm -frv ./dist
rm -frv ./sibus_lib.egg-info

echo " # Create package"
python setup.py sdist

echo " # Upload package to Pip"
twine upload dist/*.tar.gz
