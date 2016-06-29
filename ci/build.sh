#!/bin/bash

set -e

VERSION=`cat version/number`

pushd web
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp web/build/libs/web-$VERSION.jar build/.
