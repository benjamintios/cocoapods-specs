Pod::Spec.new do |spec|
  spec.name                   = 'WemapMapSDK'
  spec.version                = '0.14.2'
  spec.summary                = 'The Wemap Map iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2024 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'CoreLocation', 'UIKit', 'Foundation'

  spec.dependency             'WemapCoreSDK', "~>#{spec.version}"
  spec.dependency             'MapLibre', '~>6.2.0'

  spec.source                 = { :s3 => "https://mobile-dev.getwemap.com.s3.amazonaws.com/wemap/sdk/map/ios/#{spec.version}/#{spec.name}.zip" }
  
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end