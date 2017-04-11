Pod::Spec.new do |s|
s.name         = 'XJActionSheet'
s.version      = '0.0.1'
s.summary      = '仿微信底部alert'
s.homepage     = 'https://github.com/CoderXJLee/XJActionSheet'
s.license      = 'MIT'
s.authors      = {'lxj' => '452521617@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/CoderXJLee/XJActionSheet.git', :tag => s.version}
s.source_files = 'XJActionSheet/*.{h,m}'
#s.resource     = 'MJRefresh/MJRefresh.bundle'
s.requires_arc = true
end
