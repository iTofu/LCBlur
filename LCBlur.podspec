Pod::Spec.new do |s|

  s.name         = "LCBlur"
  s.version      = "1.0.0"
  s.summary      = "Quick way to add blur effect ~ Support: http://LeoDev.me"
  s.homepage     = "https://github.com/iTofu/LCBlur"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "devtip@163.com" }
  s.social_media_url   = "http://LeoDev.me"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/iTofu/LCBlur.git", :tag => s.version }
  s.source_files = "LCBlur/*"
  s.requires_arc = true

end
