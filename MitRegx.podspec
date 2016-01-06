
Pod::Spec.new do |s|
  s.name         = 'MitRegx'
  s.version      = '0.0.1'
  s.summary      = 'A short description of MitRegx.'
  s.homepage     = 'https://github.com/mcmengchen'
  s.license      = 'MIT'
  s.authors      = {'mcmengchen' => '416922992@qq.com'}
  s.platform     = :ios, '7.0'
  s.source       = {:git => 'https://github.com/mcmengchen/MitRegx.git', :tag => s.version}
  s.source_files = 'MitCheckDemo/MitCheckDemo/MitRegex/*.{h,m}'
  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true

  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  # Or just: s.author    = "mcmengchen"
  # s.authors            = { "mcmengchen" => "416922992@qq.com" }
  # s.social_media_url   = "http://mitchell-dream-god.com"
  #  When using multiple platforms
  # s.ios.deployment_target = "7.0"
  # s.osx.deployment_target = "10.7"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # s.framework  = ""
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  # s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
