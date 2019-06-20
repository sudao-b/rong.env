rm -rf  ~/Desktop/compare/*
mkdir -p  ~/Desktop/compare/mi/
adb -s ec3ce218 pull         /sdcard/webrtc.h265 ~/Desktop/compare/mi

mkdir -p ~/Desktop/compare/hua/
adb -s 3HX0217704000041 pull /sdcard/webrtc.h265 ~/Desktop/compare/hua

#adb -s SGHIHYHMQCGILVS4 pull /sdcard/webrtc.h265 ~/Desktop/compare/le
#adb -s 5852d211 pull         /sdcard/webrtc.h265 ~/Desktop/compare/mi

tree ~/Desktop/compare
