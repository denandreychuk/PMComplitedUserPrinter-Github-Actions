xcodebuild archive \
  -workspace PMUserPrinter.xcworkspace \
  -scheme PMUserPrinter \
  -sdk iphoneos \
  -archivePath "xcframework_archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -workspace PMUserPrinter.xcworkspace \
  -scheme PMUserPrinter \
  -sdk iphonesimulator \
  -archivePath "xcframework_archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
  -framework xcframework_archives/ios_devices.xcarchive/Products/Library/Frameworks/PMUserPrinter.framework \
  -framework xcframework_archives/ios_simulators.xcarchive/Products/Library/Frameworks/PMUserPrinter.framework \
  -output PMUserPrinter.xcframework