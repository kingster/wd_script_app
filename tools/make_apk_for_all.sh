#!/bin/bash

APP_NAME=`basename \`pwd\``
DATE="`date +"%m%d%Y"`"

echo "Creating package for $APP_NAME"

for model in WDMyCloudEX4 WDMyCloudEX2 WDMyCloudMirror WDMyCloud WDMyCloudEX4100 WDMyCloudDL4100 WDMyCloudEX2100 WDMyCloudDL2100 WDMyCloudMirrorGen2
do
	echo "Making package for $model..."
	 ../mksapkg -E -s -m $model >/dev/null
done

find ../ -maxdepth 1 -name "*.bin*" -exec rename 's/\('$DATE'\)//g' {} \;
