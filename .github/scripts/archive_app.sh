#!/bin/bash

set -euo pipefail

xcodebuild -target ExampleApp/ExampleApp \
            -scheme ExampleApp
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/ExampleApp.xcarchive \
            clean archive | xcpretty
