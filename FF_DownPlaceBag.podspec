#
# Be sure to run `pod lib lint FF_DownPlaceBag.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
# pod trunk push FF_DownPlaceBag.podspec --allow-warnings

Pod::Spec.new do |s|
  s.name             = 'FF_DownPlaceBag'
  s.version          = '0.1.1'
  s.summary          = 'A short description of FF_DownPlaceBag.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/flashbody@foxmail.com/FF_DownPlaceBag'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'flashbody@foxmail.com' => '742043728@qq.com' }
  s.source           = { :git => 'https://github.com/flashbody/FF_DownPlaceBag.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

#  s.source_files = 'FF_DownPlaceBag/Classes/**/*'
  s.ios.deployment_target = '10.0'
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.static_framework = true
  s.source_files = 'FF_DownPlaceBag/Classes/**/*{.h,.m,.pch}'
  s.prefix_header_contents = '#import "FF_DownPlaceBagPrefixHeader.pch"'
#  s.public_header_files = "FF_DownPlaceBag/Classes/**/*.h"
 
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'YTKNetwork'#,'3.0.0'
  s.dependency 'AFNetworking'
  s.dependency 'Masonry'
  s.dependency 'SVProgressHUD'
  s.dependency 'SSZipArchive'
end
