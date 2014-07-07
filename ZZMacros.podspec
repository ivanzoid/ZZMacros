#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ZZMacros"
  s.version          = "1.0.0"
  s.summary          = "Various useful macros."
  s.description      = <<-DESC
                       A set of often used macros.
                       DESC
  s.homepage         = "https://github.com/ivanzoid/ZZMacros"
  s.license          = 'MIT'
  s.author           = { "Ivan Zezyulya" => "ZZMacros@zoid.cc" }
  s.source           = { :git => "https://github.com/ivanzoid/ZZMacros.git", :tag => s.version.to_s }

  s.platform     = :ios
  s.requires_arc = true

  s.source_files = 'Source'
end
