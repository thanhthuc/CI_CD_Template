#!/bin/bash

set -euo pipefail

xcodebuild -archivePath $PWD/build/ExampleApp.xcarchive \
            -exportOptionsPlist ExampleApp/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
