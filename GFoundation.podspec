Pod::Spec.new do |s|
  s.name         = "GFoundation"
  s.version      = "0.0.1"
  s.summary      = "A short description of GFoundation."
  s.description  = <<-DESC
                   Private Foundation to help coding.
                   DESC
  s.homepage     = "http://http://github.com/Ghost233/GFoundation"
  s.license      = "GNU"
  s.author       = { "Ghost233" => "only.yesc@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "http://github.com/Ghost233/GFoundation.git", :tag => "0.0.2" }
  s.source_files  = "GFoundation/GFoundation/", "GFoundation/GFoundation/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "AFNetworking"
  s.dependency "ReactiveCocoa"
  s.dependency "Masonry"
  s.dependency "SDWebImage"
  s.dependency "Mantle"
  s.dependency "MBProgressHUD"
  s.dependency "UIColor-Utilities"
  s.dependency "JSONKit-NoWarning"
  s.dependency "Toast"
  s.dependency "ProtocolBuffers"

end
