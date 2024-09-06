Pod::Spec.new do |spec|
  spec.name                   = 'WemapCoreSDK'
  spec.version                = '0.17.0'
  spec.summary                = 'The Wemap Core iOS SDK'

  spec.homepage               = 'https://getwemap.com'
  spec.license                = { :type => 'Copyright', :text => 'Copyright 2024 Wemap SAS' }
  spec.authors                = 'Wemap SAS'

  spec.ios.deployment_target  = '12.0'
  spec.swift_version          = '5.10'

  spec.frameworks             = 'CoreLocation'

  rx_version                  = '~>6.7.0'
  spec.dependency             'RxSwift', rx_version
  spec.dependency             'RxCocoa', rx_version
  
  spec.vendored_frameworks    = "#{spec.name}/#{spec.name}.xcframework"
end
