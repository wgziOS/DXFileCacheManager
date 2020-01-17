#
#  Be sure to run `pod spec lint DXFileCacheManager.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "DXFileCacheManager"
  s.version      = "0.0.9"
  s.summary      = "good"
  s.description  = 'this is a good tool'
  s.homepage     = "https://github.com/wgziOS/DXFileCacheManager"
 
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "wgz" => "547256553@qq.com" }
  

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   s.platform     = :ios

  #  When using multiple platforms
   s.ios.deployment_target = "9.0"
   s.source       = { :git => "https://github.com/wgziOS/DXFileCacheManager.git", :tag => "v#{s.version}" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source_files  = "DXFileCacheManager", "DXFileCacheManager/DXFileCacheManager/*.{h,m}"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――#
  s.requires_arc = true

end
