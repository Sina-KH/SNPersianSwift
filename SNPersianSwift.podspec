#
# Be sure to run `pod lib lint SNPersianSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SNPersianSwift'
  s.version          = '0.6.1'
  s.summary          = 'SNPersianSwift, Persian extensions for Swift Classes.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    SNPersian, provides some extensions for Swift Classes including String, Date &... to support Persian Language and Jalaali DateTime as well.
                       DESC

  s.homepage         = 'https://github.com/Sina-KH/SNPersianSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sina-kh' => 'sina_od@yahoo.com' }
  s.source           = { :git => 'https://github.com/sina-kh/SNPersianSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/KH_Sina'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SNPersianSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SNPersianSwift' => ['SNPersianSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
