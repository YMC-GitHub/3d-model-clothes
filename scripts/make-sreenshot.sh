#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/path-resolve.sh"

ASSET_PATH="/d/data-ev-live"
PROJECT_PATH=$(path_resolve "$THIS_FILE_PATH" "../")
SCREENSHOT_PATH="${PROJECT_PATH}/screenshot"

: <<NOTE
# genarete demo.gif
src="${ASSET_PATH}/20200211_064056.mp4"
des="${SCREENSHOT_PATH}/demo.gif"
ffmpeg -i "$src" "$des"
NOTE

# genarete how-to-build.gif
src="${ASSET_PATH}/20200218_160057.mp4"
des="${SCREENSHOT_PATH}/how-to-build.gif"
#帧率大小
RATE_SIZE=1 #-r 1
#屏幕大小
SCREEN_SIZE="640x480" #-s 320x240
#开始时间
START_TIME=0 #-ss 0
#结束时间
#-t 10
#文件类型
#-f gif
ffmpeg -i "$src" -f gif -s "${SCREEN_SIZE}" "$des"

## file-usage
# ./scripts/make-sreenshot.sh
