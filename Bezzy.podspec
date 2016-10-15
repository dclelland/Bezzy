#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "Bezzy"
  s.version                 = "1.0.0"
  s.summary                 = "Bezzy is a collection of simple helpers for building UIBezierPaths."
  s.homepage                = "https://github.com/dclelland/Bezzy"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/Bezzy.git", :tag => "1.0.0" }
  s.platform                = :ios, '8.0'
  s.ios.deployment_target   = '8.0'
  s.ios.source_files        = 'Bezzy.swift'
  s.requires_arc            = true
end
