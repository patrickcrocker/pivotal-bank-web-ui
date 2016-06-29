#!/bin/bash

set -e

VERSION=`cat web-version/number`

pushd web-ui
  ./gradlew -PversionNumber=$VERSION clean assemble
popd

cp web-ui/build/libs/web-$VERSION.jar build/.
