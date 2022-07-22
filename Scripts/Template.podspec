Pod::Spec.new do |s|
  s.name = 'PMComplitedUserPrinter'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'Test framework'
  s.homepage = 'https://github.com/denandreychuk/PMComplitedUserPrinter'
  s.authors = { 'Den Andreychuk' => 'business@denandreychuk.com' }
  
  s.source = { :http => 'REMOTE_XCFRAMEWORK_URL' }
  s.ios.vendored_frameworks = 'PMUserPrinter.xcframework'
  s.swift_version = '5.0'
  s.platform = :ios, '13.0'

  s.dependency 'SwiftyBeaver'

end
