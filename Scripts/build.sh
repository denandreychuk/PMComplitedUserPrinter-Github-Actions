xcodebuild archive \
  -workspace PMUserPrinter.xcworkspace \
  -scheme PMUserPrinter \
  -sdk iphoneos \
  -archivePath "output/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -workspace PMUserPrinter.xcworkspace \
  -scheme PMUserPrinter \
  -sdk iphonesimulator \
  -archivePath "output/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
  -framework output/ios_devices.xcarchive/Products/Library/Frameworks/PMUserPrinter.framework \
  -framework output/ios_simulators.xcarchive/Products/Library/Frameworks/PMUserPrinter.framework \
  -output PMUserPrinter.xcframework

  zip -r output/PMComplitedUserPrinter.zip LICENSE PMUserPrinter.xcframework