Pod::Spec.new do |s|
  s.name         = 'GFoundation'
  s.version      = '0.0.26'
  s.summary      = 'A short description of GFoundation.'
  s.description  = <<-DESC
                   Private Foundation to help coding.
                   DESC
  s.homepage     = 'http://http://github.com/Ghost233/GFoundation'
  s.license      = 'GNU'
  s.author       = { 'Ghost233' => 'only.yesc@gmail.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'http://github.com/Ghost233/GFoundation.git', :tag => '0.0.26' }
  s.source_files  = 'GFoundation/GFoundation/*.{h.m}', 'GFoundation/GFoundation/**/*.{h,m}'
  s.requires_arc = true
  s.dependency 'AFNetworking'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  s.dependency 'Mantle'
  s.dependency 'MBProgressHUD'
  s.dependency 'UIColor-Utilities'
  s.dependency 'JSONKit-NoWarning'
  s.dependency 'Toast'
  s.dependency 'BlocksKit'
  s.dependency 'Overline-BlocksKit'
  s.dependency 'EGOTableViewPullRefreshAndLoadMore'
  s.dependency 'crackify'
  s.dependency 'OpenUDID'
  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'PDTSimpleCalendar'
  s.dependency 'DZNEmptyDataSet'
  s.dependency 'ChameleonFramework'
  s.dependency 'SVProgressHUD'
  s.dependency 'ReactiveCocoa'
  s.dependency 'iRate'
  s.dependency 'MSDynamicsDrawerViewController'
  s.dependency 'AKPickerView'
  s.dependency 'pop'
  s.dependency 'PKYStepper'
end
