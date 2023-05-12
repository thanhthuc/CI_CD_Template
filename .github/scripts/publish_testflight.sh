#!/bin/bash

set -euo pipefail
xcrun altool --upload-app -t ios -f build/ExampleApp.ipa -u "$APP_STORE_CONNECT_USERNAME" -p "$APP_STORE_CONNECT_PASSWORD" --verbose
