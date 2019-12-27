## https://www.jianshu.com/u/0690263bf2bd
## AppIcon：1024
## 安卓横屏：1280x720 1600x960 1920x1280
## 安卓竖屏：720x1280 960x1600 1280x1920
## 苹果横屏：2208x1242 2436x1125
## 苹果竖屏：640x960 640x1136 750x1334 1125x2436 1242x2208
## 平板横屏：2048x1536
## 平板竖屏：1536x2048

echo "【make cordova project】"
cp *.png ../
cp shop-app.keystore ../
cp constant.js ../shop-vue/src/common/utils/

cd ..
cordova create shop-app vip.qicaiqianbao.shop 分期借呗

cd shop-app
cordova platform add ios
cordova platform add android

cordova plugin add ../cordova-plugin-themeablebrowser
cordova plugin add https://github.com/laden666666/cordovaDialogsPlus

#cordova plugin add cordova-plugin-wechat  --variable wechatappid=YOUR_WECHAT_APPID
cordova plugin add jpush-phonegap-plugin --variable APP_KEY=11f94d967cada63899781e24

cordova plugin add cordova-plugin-file                --save
cordova plugin add cordova-plugin-file-opener2        --save
cordova plugin add cordova-plugin-file-transfer       --save
cordova plugin add cordova-plugin-device              --save
cordova plugin add cordova-plugin-dialogs             --save
cordova plugin add cordova-plugin-backbutton          --save
cordova plugin add cordova-plugin-splashscreen        --save
cordova plugin add cordova-plugin-android-permissions --save
#cordova plugin add cordova-plugin-vibration           --save
#cordova plugin add cordova-plugin-themeablebrowser    --save
#cordova plugin add cordova-plugin-local-notification  --save
#cordova plugin add cordova-plugin-network-information --save

rm -fr platforms/www/*
rm -fr platforms/ios/www/js
rm -fr platforms/ios/www/css
rm -fr platforms/ios/www/img
rm -fr platforms/ios/www/index.html
rm -fr platforms/android/app/src/main/res/*-v*
rm -fr platforms/android/app/src/main/assets/www/js
rm -fr platforms/android/app/src/main/assets/www/css
rm -fr platforms/android/app/src/main/assets/www/img
rm -fr platforms/android/app/src/main/assets/www/index.html

#mkdir  platforms/android/app/src/main/res/drawable-xxhdpi
#cp plugins/cordova-plugin-themeablebrowser/src/android/res/drawable-xhdpi/*.png platforms/android/app/src/main/res/drawable-xxhdpi/

echo "【build uve project】"

cd ..
cp 1024.png logo.png

sips -Z 128 logo.png

cp logo.png        shop-vue/src/common/assets/images/
cp app/bg2.jpg     shop-vue/src/common/assets/images/spread/
cp app/bg3.jpg     shop-vue/src/common/assets/images/spread/
cp app/favicon.ico shop-vue/
cp app/index.html  shop-vue/src/views/index/
cp app/spread.html shop-vue/src/views/spread/

cd shop-vue
npm run build
cp -fr template/* ../shop-app/www/
cp -fr template/* ../shop-app/platforms/ios/www/
cp -fr template/* ../shop-app/platforms/android/app/src/main/assets/www/

echo "【making android resources】"

cd ..

cp 1024.png  20.png
cp 1024.png  29.png
cp 1024.png  40.png
cp 1024.png  48.png
cp 1024.png  50.png
cp 1024.png  55.png
cp 1024.png  57.png
cp 1024.png  58.png
cp 1024.png  60.png
cp 1024.png  72.png
cp 1024.png  76.png
cp 1024.png  80.png
cp 1024.png  87.png
cp 1024.png  88.png
cp 1024.png  96.png
cp 1024.png 100.png
cp 1024.png 114.png
cp 1024.png 120.png
cp 1024.png 144.png
cp 1024.png 152.png
cp 1024.png 167.png
cp 1024.png 172.png
cp 1024.png 180.png
cp 1024.png 192.png
cp 1024.png 196.png

sips -Z  20  20.png
sips -Z  29  29.png
sips -Z  40  40.png
sips -Z  48  48.png
sips -Z  50  50.png
sips -Z  55  55.png
sips -Z  57  57.png
sips -Z  58  58.png
sips -Z  60  60.png
sips -Z  72  72.png
sips -Z  76  76.png
sips -Z  80  80.png
sips -Z  87  87.png
sips -Z  88  88.png
sips -Z  96  96.png
sips -Z 100 100.png
sips -Z 114 114.png
sips -Z 120 120.png
sips -Z 144 144.png
sips -Z 152 152.png
sips -Z 167 167.png
sips -Z 172 172.png
sips -Z 180 180.png
sips -Z 192 192.png
sips -Z 196 196.png

cp   72.png shop-app/platforms/android/app/src/main/res/mipmap-hdpi/ic_launcher.png
cp   96.png shop-app/platforms/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
cp  144.png shop-app/platforms/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
cp  192.png shop-app/platforms/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png

cp   20.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-20.png
cp   40.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-20@2x.png
cp   60.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-20@3x.png
cp   48.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-24@2x.png
cp   55.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-27.5@2x.png
cp   29.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-29.png
cp   58.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-29@2x.png
cp   87.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-29@3x.png
cp   40.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-40.png
cp   80.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-40@2x.png
cp   88.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-44@2x.png
cp   50.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-50.png
cp  100.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-50@2x.png
cp  120.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-60@2x.png
cp  180.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-60@3x.png
cp   72.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-72.png
cp  144.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-72@2x.png
cp   76.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-76.png
cp  152.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-76@2x.png
cp  167.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-83.5@2x.png
cp  172.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-86@2x.png
cp  196.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-98@2x.png
cp 1024.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon-1024.png
cp   57.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon.png
cp  114.png shop-app/platforms/ios/分期借呗/Images.xcassets/AppIcon.appiconset/icon@2x.png


cp  960x1600.png 200x320.png
cp 1280x1920.png 320x480.png
cp  960x1600.png 480x800.png
sips -Z 320 200x320.png
sips -Z 480 320x480.png
sips -Z 800 480x800.png
cp  200x320.png  shop-app/platforms/android/app/src/main/res/drawable-port-ldpi/screen.png
cp  320x480.png  shop-app/platforms/android/app/src/main/res/drawable-port-mdpi/screen.png
cp  480x800.png  shop-app/platforms/android/app/src/main/res/drawable-port-hdpi/screen.png
cp  720x1280.png shop-app/platforms/android/app/src/main/res/drawable-port-xhdpi/screen.png
cp  960x1600.png shop-app/platforms/android/app/src/main/res/drawable-port-xxhdpi/screen.png
cp 1280x1920.png shop-app/platforms/android/app/src/main/res/drawable-port-xxxhdpi/screen.png


cp 1600x960.png  320x200.png
cp 1920x1280.png 480x320.png
cp 1600x960.png  800x480.png

sips -Z 320 320x200.png
sips -Z 480 480x320.png
sips -Z 800 800x480.png

cp  320x200.png  shop-app/platforms/android/app/src/main/res/drawable-land-ldpi/screen.png
cp  480x320.png  shop-app/platforms/android/app/src/main/res/drawable-land-mdpi/screen.png
cp  800x480.png  shop-app/platforms/android/app/src/main/res/drawable-land-hdpi/screen.png
cp 1280x720.png  shop-app/platforms/android/app/src/main/res/drawable-land-xhdpi/screen.png
cp 1600x960.png  shop-app/platforms/android/app/src/main/res/drawable-land-xxhdpi/screen.png
cp 1920x1280.png shop-app/platforms/android/app/src/main/res/drawable-land-xxxhdpi/screen.png


cp  640x960.png  320x480.png
cp 1536x2048.png 768x1024.png
cp 2048x1536.png 1024x768.png
 
sips -Z  480 320x480.png
sips -Z 1024 768x1024.png
sips -Z 1024 1024x768.png #最长边
 
cp  640x1136.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-568h@2x~iphone.png
cp  750x1334.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-667h.png
cp 1242x2208.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-736h.png
cp 1125x2436.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-2436h.png
cp 2208x1242.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Landscape-736h.png
cp 2436x1125.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Landscape-2436h.png
cp 2048x1536.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Landscape@2x~ipad.png
cp 1024x768.png  shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Landscape~ipad.png
cp 1536x2048.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Portrait@2x~ipad.png
cp  768x1024.png shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default-Portrait~ipad.png
cp  640x960.png  shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default@2x~iphone.png
cp  320x480.png  shop-app/platforms/ios/分期借呗/Images.xcassets/LaunchImage.launchimage/Default~iphone.png

rm -fr *.png

cd shop-app
cordova build android --verbose --release
mv platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk ../

cd ..
jarsigner -verbose -keystore shop-app.keystore -signedjar app-release.apk app-release-unsigned.apk qicaiqianbao

open .
