#!/bin/bash

set -euo pipefail

security create-keychain -p "" login.keychain
security list-keychains -s login.keychain
security default-keychain -s login.keychain
security unlock-keychain -p "" login.keychain
security set-keychain-settings
security import <(echo $SIGNING_CERTIFICATE_P12_DATA | base64 --decode) \
                -f pkcs12 \
                -k login.keychain \
                -P $SIGNING_CERTIFICATE_PASSWORD \
                -T /usr/bin/codesign
security set-key-partition-list -S apple-tool:,apple: -s -k "" login.keychain
