#!/bin/bash

set -euo pipefail

xcodebuild -archivePath $PWD/build/ExampleApp.xcarchive \
            -exportOptionsPlist exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
