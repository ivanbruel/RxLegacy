#
# Be sure to run `pod lib lint RxLegacy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxLegacy'
  s.version          = '0.2'
  s.summary          = 'A bunch of legacy functions from RxSwift for easier block completion'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A bunch of legacy functions from RxSwift for easier block completion.
Includes doOnNext, doOnCompleted, doOnSubscribe, doOnError, doOnDispose,
subscribeNext, subscribeError, subscribeCompleted, subscribeDispose and mapVoid.
Also include a sub-dependency for Result related calls such as, subscribeSucccess,
subscribeFailure, doOnFailure and doOnSucccess.
                       DESC

  s.homepage         = 'https://github.com/ivanbruel/RxLegacy'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ivanbruel' => 'ivan.bruel@gmail.com' }
  s.source           = { :git => 'https://github.com/ivanbruel/RxLegacy.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ivanbruel'

  s.ios.deployment_target = '8.0'

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    s.source_files = 'RxLegacy/*'
    s.dependency 'RxSwift', '~> 4.0'
  end

  s.subspec "RxResult" do |ss|
    ss.source_files = "RxLegacy/RxResult/*"
    ss.dependency "RxLegacy/Core"
    ss.dependency "Result", '~> 3.2'
    ss.dependency "RxResult", '~> 2.1'
  end

end
