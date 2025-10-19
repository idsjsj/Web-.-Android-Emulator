#!/bin/bash
set -e

export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/platform-tools:$PATH

echo "[start] VNC 서버 실행"
/root/start-vnc.sh &

echo "[start] Android 에뮬레이터 부팅"
emulator -avd android12-play -noaudio -no-boot-anim -gpu swiftshader_indirect -verbose &

sleep 40
echo "[ok] 에뮬레이터 부팅 완료"

tail -f /dev/null
