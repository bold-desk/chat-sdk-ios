Pod::Spec.new do |s|
  s.name             = "bolddesk_chat_sdk"
  s.version          = "1.0.6"
  s.summary          = "BoldDesk Chat SDK"
  s.description      = <<-DESC
                           The BoldDesk Chat iOS SDK empowers you to seamlessly integrate a fully functional chat widget into your iOS mobile applications. With this SDK, end-users can connect with support agents in real time—without needing to open a web browser.
                       DESC
  s.homepage         = "https://github.com/bold-desk/chat-sdk-ios/tree/development"
  s.author           = { "BoldDesk" => "support@bolddesk.com" }
  s.license          = { :type => "BoldDesk License", :file => "LICENSE" }
  s.platform         = :ios, "14.0"
  s.source           = { :git => "https://github.com/bold-desk/chat-sdk-ios.git", :tag => s.version}
  s.vendored_frameworks = "BoldDeskChatSDK.xcframework"
  s.swift_version    = "5.3"
  s.dependency 'bolddesk_support_sdk', '~> 1.0.7'
end
