#!/bin/bash

set -euo pipefail

xcodebuild -project ExampleApp/ExampleApp.xcodeproj \
            -scheme ExampleApp \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/ExampleApp.xcarchive \
            clean archive | xcpretty
