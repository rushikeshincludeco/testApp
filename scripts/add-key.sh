#!/bin/sh

KEYCHAIN_PASSWORD=circleci

security create-keychain -p $KEYCHAIN_PASSWORD ios-build.keychain
security import ./scripts/1.p12 -k ~/Library/Keychains/ios-build.keychain -P $KEY_PASSWORD -T /usr/bin/codesign
security list-keychain -s ~/Library/Keychains/ios-build.keychain
security unlock-keychain -p $KEYCHAIN_PASSWORD ~/Library/Keychains/ios-build.keychain

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./scripts/profile/* ~/Library/MobileDevice/Provisioning\ Profiles/
