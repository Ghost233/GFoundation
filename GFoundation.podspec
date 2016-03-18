Pod::Spec.new do |s|
  s.name         = 'GFoundation'
  s.version      = '0.0.34'
  s.summary      = 'A short description of GFoundation.'
  s.description  = <<-DESC
                   Private Foundation to help coding.
                   DESC
  s.homepage     = 'http://http://github.com/Ghost233/GFoundation'
  s.license      = 'GNU'
  s.author       = { 'Ghost233' => 'only.yesc@gmail.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'http://github.com/Ghost233/GFoundation.git'}
  s.requires_arc = true
  s.module_name = 'GFoundation'
  
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
  
  #base
  s.subspec "Core" do |core|
	core.source_files  = 'GFoundation/Core/*.{h.m}', 'GFoundation/Core/**/*.{h,m}'
  end

  #GooglePlus
  s.subspec "GUI" do |ui|
    ui.source_files  = 'GFoundation/GUI/*.{h.m}', 'GFoundation/GUI/GView_Storyboard/*.{h,m}'
    ui.ios.vendored_frameworks = 'GFoundation/GUI/GUIFramework.framework'
  end
end
