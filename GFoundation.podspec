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
  s.source       = { :git => "http://github.com/Ghost233/GFoundation.git", :tag => "0.0.1" }
  s.source_files  = "Classes/GFoundation/", "Classes/GFoundation/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "JSONKit"
  s.dependency "AFNetworking"
  s.dependency "ReactiveCocoa"
  s.dependency "Masonry"
  s.dependency "SDWebImage"
  s.dependency "Mantle"
  s.dependency "MBProgressHUD"
  s.dependency "UIColor-Utilities"

end
