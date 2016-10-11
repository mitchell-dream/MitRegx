
Pod::Spec.new do |s|
  s.name         = 'MitRegx'
  s.version      = '0.0.2'
  s.summary      = 'MitRegx'
  s.homepage     = 'https://github.com/mcmengchen'
  s.license      = 'MIT'
  s.authors      = {'mcmengchen' => '416922992@qq.com'}
  s.platform     = :ios, '7.0'
  s.source       = {:git => 'https://github.com/mcmengchen/MitRegx.git', :tag => s.version}
  s.source_files = 'MitCheckDemo/MitCheckDemo/MitRegex/*.{h,m}'
  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true
end
