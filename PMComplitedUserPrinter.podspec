Pod::Spec.new do |s|
  s.name = 'PMComplitedUserPrinter'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'Test framework'
  s.homepage = 'https://github.com/denandreychuk/PMComplitedUserPrinter'
  s.authors = { 'Den Andreychuk' => 'business@denandreychuk.com' }
  
  s.source = { :http => 'https://firebasestorage.googleapis.com/v0/b/denandreychuk-a9aa5.appspot.com/o/PMComplitedUserPrinter%2F1.0.0%2FPMComplitedUserPrinter.zip?alt=media&token=5bb82319-4c80-4053-9b4d-f3f1151cb493' }
  s.ios.vendored_frameworks = 'PMUserPrinter.xcframework'
  s.swift_version = '5.0'
  s.platform = :ios, '13.0'

  s.dependency 'SwiftyBeaver'

end
