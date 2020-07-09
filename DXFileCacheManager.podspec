Pod::Spec.new do |s|
    s.name         = "DXFileCacheManager"
    s.version      = "1.0.2"
    s.ios.deployment_target = '9.0'
    s.summary      = "is a simple cache tool"
    s.homepage     = "https://github.com/wgziOS"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "Simple" => "547256553@qq.com" }
    s.source       = { :git => "https://github.com/wgziOS/DXFileCacheManager.git", :tag => s.version }
    s.source_files  = "DXFileCacheManager/*.{h,m}"
    s.frameworks = 'Foundation'
    s.requires_arc = true
end
