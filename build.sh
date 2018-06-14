#!/bin/bash
rm test
rm -rf _builds
echo "\nTrying to configurate...\n"
cmake -H. -B_builds
echo "\nTrying to build...\n"
cmake --build _builds
