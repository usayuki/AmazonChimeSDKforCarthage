#!/bin/bash

version_file_path="./sdk-version.txt"
amazon_chime_sdk_version=$(awk '/AmazonChimeSDK:/ {print $2}' $version_file_path)
amazon_chime_sdk_media_version=$(awk '/AmazonChimeSDKMedia:/ {print $2}' $version_file_path)

cd Frameworks

if [ ! -e AmazonChimeSDK-"${amazon_chime_sdk_version}".tar.gz ]; then
  rm AmazonChimeSDK-*.tar.gz
  curl -OL https://amazon-chime-sdk-ios.s3.amazonaws.com/sdk/"${amazon_chime_sdk_version}"/AmazonChimeSDK-"${amazon_chime_sdk_version}".tar.gz
  tar -zxvf AmazonChimeSDK-"${amazon_chime_sdk_version}".tar.gz
  rm NOTICE.txt THIRD-PARTY.txt
fi

if [ ! -e AmazonChimeSDKMedia-"${amazon_chime_sdk_media_version}".tar.gz ]; then
  rm AmazonChimeSDKMedia-*.tar.gz
  curl -OL https://amazon-chime-sdk-ios.s3.amazonaws.com/media/"${amazon_chime_sdk_media_version}"/AmazonChimeSDKMedia-"${amazon_chime_sdk_media_version}".tar.gz
  tar -zxvf AmazonChimeSDKMedia-"${amazon_chime_sdk_media_version}".tar.gz
  rm NOTICE.txt THIRD-PARTY.txt
fi
