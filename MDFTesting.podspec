Pod::Spec.new do |s|
  s.name         = "MDFTesting"
  s.summary      = "MDFTesting"
  s.version      = "1.0.0"
  s.authors      = "The Material Foundation Authors"
  s.license      = "Apache 2.0"
  s.homepage     = "https://github.com/material-foundation/material-testing-ios"
  s.source       = { :git => "https://github.com/material-foundation/material-testing-ios.git", :tag => "v" + s.version.to_s }
  s.platform     = :ios
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.default_subspec = "MDFTesting"

  s.subspec "MDFTesting" do |ss|
    ss.public_header_files = "src/*.h"
    ss.source_files = "src/*.{h,m,mm}", "src/private/*.{h,m,mm}"
    ss.framework = "XCTest"
  end

end
