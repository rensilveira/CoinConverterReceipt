#
# Be sure to run `pod lib lint CoinConverterReceipt.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CoinConverterReceipt'
  s.version          = '0.1.0'
  s.summary          = 'CoinConverterReceipt flow.'

  s.description      = <<-DESC
CoinConverter Receipt flow swiftModule.
                       DESC

  s.homepage         = 'https://github.com/rnnsilveira/CoinConverterReceipt'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rnnsilveira' => 'rnn.silveira@gmail.com' }
  s.source           = { :git => 'https://github.com/rnnsilveira/CoinConverterReceipt.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'
  s.source_files = 'CoinConverterReceipt/**/*.{swift}'

  s.dependency 'SwiftCore'
end
