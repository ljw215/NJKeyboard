

Pod::Spec.new do |s|

s.name         = "NJKeyboard"
s.version      = "0.0.5"
s.summary      = "一行代码集成表情键盘, 简单实用"

s.homepage     = "https://github.com/NJHu/NJKeyboard"

s.license      = "MIT"



s.author       = { "NJHu" => "64hp@163.com" }



s.ios.deployment_target = '9.0'
s.source       = { :git => "https://github.com/NJHu/NJKeyboard.git", :tag => s.version }



s.source_files  = "Source/*.swift"
s.source_files  = "Source/*.bundle"



end
