Pod::Spec.new do |s|
  s.name         = 'BeamMusicPlayerViewController'
  s.version      = '0.2.2'
  s.summary      = 'An iPhone/iPad view controller to visualize and control music playback.'
  s.homepage     = 'https://github.com/BeamApp/MusicPlayerViewController'
  s.license      = {:type => 'New BSD', :file => 'LICENSE'}
  s.authors      = { 'Moritz Haarmann' => 'http://momo.brauchtman.net', 'Heiko Behrens' => 'http://HeikoBehrens.net' }
  s.source       = { :git => 'https://github.com/BeamApp/MusicPlayerViewController.git', :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'Source/*.{h,m}'
  s.exclude_files = 'Source/BeamMPMusicPlayerProvider.{h,m}', 'Source/NSDateFormatter+Duration.{h,m}'
  s.resources = 'Source/*.{bundle,xib}', 
  s.frameworks = 'CoreGraphics'
  s.requires_arc = true
  s.dependency 'OBSlider', '~> 1.1.0'
  s.dependency 'AutoScrollLabel', '~> 0.0.1'

  #s.preferred_dependency = 'MediaPlayer'
  s.subspec 'MediaPlayer' do |mediaPlayer|
    mediaPlayer.source_files = 'Source/BeamMPMusicPlayerProvider.{h,m}'
    mediaPlayer.frameworks = 'MediaPlayer'
  end
  s.subspec 'Categories' do |categories|
    categories.source_files = 'Source/NSDateFormatter+Duration.{h,m}'
  end
end
