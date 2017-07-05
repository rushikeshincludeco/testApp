#!/bin/sh

############## ------------------ ############
# This will have whole deployment code #######
############## ------------------ ############

echo "Deployment Started!"

# First paramter expected as APK path 
#$CIRCLE_ARTIFACTS/app/outputs/apk/app-debug.apk

APK_PATH=$1

echo $APK_PATH

# Second parameter expected as access token
ACCESS_TOKEN=$2

echo $ACCESS_TOKEN

# Theird one is application id
APP_ID=$3

echo $APP_ID

curl \
 -F "status=2" \
 -F "notify=1" \
 -F "notes=Some new features and fixed bugs." \
 -F "notes_type=0" \
 -F "ipa=@hockeyapp.ipa" \
 -F "dsym=@hockeyapp.dSYM.zip" \
 -H "X-HockeyAppToken: $HOCKEYAPP_TOKEN" \
 https://rink.hockeyapp.net/api/2/apps/upload

echo "Deployment finished!"

