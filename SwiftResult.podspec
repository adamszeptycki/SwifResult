#
# Be sure to run `pod lib lint SwiftResult.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.module_name      = "Result"
  s.name             = "SwiftResult"
  s.version          = "0.1.0"
  s.summary          = "SwiftResult provides enum for handling results from any operation more swift like."
  s.description      = <<-DESC
                        Library provides enum for handling result from operation. Enum can have value Failure with associated NSError instance or value Success with associated result of operation.
                       DESC
  s.homepage         = "https://github.com/adamszeptycki/SwifResult"
  s.license          = 'MIT'
  s.author           = { "Adam Szeptycki" => "adamszeptycki@gmail.com" }
  s.source           = { :git => "https://github.com/adamszeptycki/SwifResult.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'SwiftResult' => ['Pod/Assets/*.png']
  }
  # s.public_header_files = 'Pod/Classes/**/*.h'
end
