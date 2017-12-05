#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "Bezzy"
  s.version                 = "1.2.1"
  s.summary                 = "Bezzy is a collection of simple helpers for building UIBezierPaths."
  s.homepage                = "https://github.com/dclelland/Bezzy"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/Bezzy.git", :tag => "1.2.1" }
  s.requires_arc            = true

  s.ios.deployment_target   = '8.0'
  s.ios.source_files        = 'Bezzy.swift'

  s.osx.deployment_target   = '10.10'
  s.osx.source_files        = 'Bezzy.swift'
end
