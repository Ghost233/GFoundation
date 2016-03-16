Pod::Spec.new do |s|
  s.name         = 'GFoundation'
  s.version      = '0.0.33'
  s.summary      = 'A short description of GFoundation.'
  s.description  = <<-DESC
                   Private Foundation to help coding.
                   DESC
  s.homepage     = 'http://http://github.com/Ghost233/GFoundation'
  s.license      = 'GNU'
  s.author       = { 'Ghost233' => 'only.yesc@gmail.com' }
  s.platform     = :ios, '7.1'
  s.source       = { :git => 'http://github.com/Ghost233/GFoundation.git', :tag => '0.0.31' }
  s.source_files  = 'GFoundation/GFoundation/*.{h.m}', 'GFoundation/GFoundation/**/*.{h,m}', 'GFoundation/Library/', 'GFoundation/Library/*.framework/*.h'
  s.requires_arc = true
  s.dependency 'pop'
  s.dependency 'FMDB'
  s.dependency 'YYKit'
  s.dependency 'AFNetworking'
  s.dependency 'Mantle'
  s.dependency 'ReactiveCocoa'
  s.dependency 'Masonry'
  s.dependency 'FDFullscreenPopGesture'
  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'UIView+FDCollapsibleConstraints'
  s.dependency 'FDStackView'
  s.dependency 'XXNibBridge'
  s.dependency 'NSLogger'
  s.libraries = 'GUIFramework'
end
