Pod::Spec.new do |s|
    s.name         = "DXFileCacheManager"
    s.version      = "1.0.3"
    s.ios.deployment_target = '9.0'
    s.summary      = "is a simple cache tool"
    s.homepage     = "https://github.com/wgziOS"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "Simple" => "547256553@qq.com" }
    s.source       = { :git => "https://github.com/wgziOS/DXFileCacheManager.git", :tag => "1.0.3" }
    s.source_files  = "DXFileCacheManager/DXFileCacheManager/*.{h,m} "
    s.requires_arc = true
end
