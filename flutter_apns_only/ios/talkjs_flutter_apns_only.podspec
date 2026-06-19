#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint talkjs_flutter_apns_only.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'talkjs_flutter_apns_only'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }

  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.source_files = [
    'talkjs_flutter_apns_only/Sources/talkjs_flutter_apns_only/**/*.Swift',
    'talkjs_flutter_apns_only/Sources/talkjs_flutter_apns_only_objc/**/*.{h,m}'
  ]

  s.public_header_files = 'talkjs_flutter_apns_only/Sources/talkjs_flutter_apns_only_objc/include/**/*.h'

  s.xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/talkjs_flutter_apns_only/Sources/talkjs_flutter_apns_only_objc/include"'
  }

end
