Pod::Spec.new do |s|
  s.name           = "ZDOpenIM"
  s.version        = "1.0.1"
  s.summary        = "Privately owned ZDOpenIM."
  s.description    = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage       = "https://github.com/hanyunhe1/ZDOpenIM.git"
  s.license        = { :type => 'MIT', :file => 'LICENSE' }
  s.author         = { "hanyunhe1" => "hanyunhe@qq.com" }
  s.source         = { :git => "https://github.com/hanyunhe1/ZDOpenIM.git", :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.0'
 
  s.source_files = "ZDOpenIM/Sources/**/*.{h,m}"
  s.public_header_files = "ZDOpenIM/Sources/**/*.h"
 
  s.resource_bundles = {
    'ZDOpenIM' => ['ZDOpenIM/Resources/*.png']
  }
 
  s.frameworks = "UIKit", "Foundation", "AVFAudio"
  s.dependency 'OpenIMSDK', '2.3.6'
end