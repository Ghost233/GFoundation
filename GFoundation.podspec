Pod::Spec.new do |s|
  s.name         = 'GFoundation'
  s.version      = '0.0.42'
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
  s.dependency 'Masonry'
  s.dependency 'FDFullscreenPopGesture'
  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'UIView+FDCollapsibleConstraints'
  s.dependency 'FDStackView'
  s.dependency 'XXNibBridge'
  s.dependency 'MBProgressHUD'
  s.dependency 'SSKeychain'
  
  #base
  s.subspec "Core" do |core|
	core.source_files  = 'GFoundation/Core/*.{h.m}', 'GFoundation/Core/**/*.{h,m}'
  end

  s.subspec "GUI" do |ui|ui
    ui.source_files  = 'GFoundation/GUI/include/GUIFramework/*.{h,m}'
    ui.ios.vendored_library = 'GFoundation/GUI/libGUIFramework.a'
    ui.vendored_libraries = 'libGUIFramework.a'
  end
  
  s.subspec "QuickStoryboard" do |qsb|
    qsb.source_files  = 'GFoundation/QuickStoryboard/include/GUIQuickStoryboardFramework/*.{h,m}'
    qsb.ios.vendored_library = 'GFoundation/QuickStoryboard/libGUIQuickStoryboardFramework.a'
    qsb.vendored_libraries = 'libGUIQuickStoryboardFramework.a'
  end
end
