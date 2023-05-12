#!/bin/bash

set -euo pipefail

xcodebuild -archivePath $PWD/build/ExampleApp.xcarchive \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty

#-exportOptionsPlist ExampleApp/exportOptions.plist \
