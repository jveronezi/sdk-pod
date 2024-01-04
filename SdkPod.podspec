#
# Be sure to run `pod lib lint sdk-pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SdkPod'
  s.version          = '0.1.8'
  s.summary          = 'A short description of sdk-pod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jveronezi/sdk-pod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jveronezi' => 'jveronezi@fullstacklabs.co' }
  s.source           = { :git => 'https://github.com/jveronezi/sdk-pod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform       = :ios, '15.0'
 
  s.source_files = 'Pod/Classes/**/*.{h,m,swift}'
  s.resources      = 'Pod/Assets/{SdkPod.js,assets}'
  s.ios.resource_bundles = { 'SdkPod' => ['Pod/Assets/{SdkPod.js,assets}'] }

  core = [
    '../node_modules/react-native/React.podspec',
    '../node_modules/react-native/React-Core.podspec',
    '../node_modules/react-native/React/CoreModules/React-CoreModules.podspec',
    '../node_modules/react-native/Libraries/ActionSheetIOS/React-RCTActionSheet.podspec',
    '../node_modules/react-native/Libraries/NativeAnimation/React-RCTAnimation.podspec',
    '../node_modules/react-native/Libraries/Blob/React-RCTBlob.podspec',
    '../node_modules/react-native/Libraries/Image/React-RCTImage.podspec',
    '../node_modules/react-native/Libraries/LinkingIOS/React-RCTLinking.podspec',
    '../node_modules/react-native/Libraries/Network/React-RCTNetwork.podspec',
    '../node_modules/react-native/Libraries/Settings/React-RCTSettings.podspec',
    '../node_modules/react-native/Libraries/Text/React-RCTText.podspec',
    '../node_modules/react-native/Libraries/Vibration/React-RCTVibration.podspec'
  ]

  core_dependencies = [
    '../node_modules/react-native/ReactCommon/cxxreact/React-cxxreact.podspec',
    '../node_modules/react-native/ReactCommon/jsi/React-jsi.podspec',
    '../node_modules/react-native/ReactCommon/jsiexecutor/React-jsiexecutor.podspec',
    '../node_modules/react-native/React/FBReactNativeSpec/FBReactNativeSpec.podspec',
    '../node_modules/react-native/Libraries/TypeSafety/RCTTypeSafety.podspec',
    '../node_modules/react-native/ReactCommon/ReactCommon.podspec',
    '../node_modules/react-native/ReactCommon/yoga/Yoga.podspec',
  ]

  core_dependencies_dependencies = [
    '../node_modules/react-native/Libraries/RCTRequired/RCTRequired.podspec',
    '../node_modules/react-native/Libraries/FBLazyVector/FBLazyVector.podspec',
    # '../node_modules/react-native/ReactCommon/jsinspector/React-jsinspector.podspec',
    '../node_modules/react-native/ReactCommon/jsinspector-modern/React-jsinspector.podspec',
    '../node_modules/react-native/ReactCommon/callinvoker/React-callinvoker.podspec',
    '../node_modules/react-native/ReactCommon/reactperflogger/React-perflogger.podspec',
    '../node_modules/react-native/ReactCommon/runtimeexecutor/React-runtimeexecutor.podspec',
    '../node_modules/react-native/ReactCommon/logger/React-logger.podspec',
  ]

  third_party_dependencies = [
    '../node_modules/react-native/third-party-podspecs/DoubleConversion.podspec',
    '../node_modules/react-native/third-party-podspecs/RCT-Folly.podspec',
    '../node_modules/react-native/third-party-podspecs/glog.podspec',
    '../node_modules/react-native/third-party-podspecs/boost.podspec'
  ]


  podspecs = core + core_dependencies + core_dependencies_dependencies + third_party_dependencies

  podspecs.each do |podspec_path|
    # p podspec_path
    spec = Pod::Specification.from_file podspec_path
      s.dependency spec.name, "#{spec.version}"
  end
end
