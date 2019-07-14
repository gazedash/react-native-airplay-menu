
Pod::Spec.new do |s|
  s.name         = "RNReactNativeAirplayMenu"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeAirplayMenu"
  s.description  = <<-DESC
                  RNReactNativeAirplayMenu
                   DESC
  s.homepage     = "https://github.com/gazedash/react-native-airplay-menu"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/gazedash/react-native-airplay-menu.git", :tag => "master" }
  s.source_files  = "RNReactNativeAirplayMenu/**/*.{h,m,swift}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
