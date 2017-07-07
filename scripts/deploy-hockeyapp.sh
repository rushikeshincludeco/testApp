#!/bin/sh

############## ------------------ ############
# This will have whole deployment code #######
############## ------------------ ############

echo "Deployment Started!"

# First paramter expected as APK path 
#$CIRCLE_ARTIFACTS/app/outputs/apk/app-debug.apk

IPA_PATH=$1

echo $IPA_PATH

fname=basename $IPA_PATH
echo $fname


# Second parameter expected as access token
ACCESS_TOKEN=$2

echo $ACCESS_TOKEN

BUILD_NUMBER=$4

mv *.ipa *-$BUILD_NUMBER.ipa

# Theird one is application id
APP_ID=$3

echo $APP_ID

curl \
-F "status=2" \
-F "notify=0" \
-F "notes=CircleCI Build" \
-F "ipa=@$IPA_PATH" \
-H "X-HockeyAppToken:$ACCESS_TOKEN" \
https://rink.hockeyapp.net/api/2/apps/$APP_ID/app_versions/upload

echo "Deployment finished!"

