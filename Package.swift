// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BoldDeskChatSDK",
    platforms: [
        .iOS(.v15) 
    ],
    products: [
        .library(
            name: "BoldDeskChatSDK",
            targets: ["BoldDeskChatSDKTargets"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/bolddesk/support_sdk_ios.git",
            from: "1.0.9"
        )
    ],
    targets: [
        .binaryTarget(
            name: "BoldDeskChatSDKBinary",
            path: "BoldDeskChatSDK.xcframework"
        ),
        .target(
            name: "BoldDeskChatSDKTargets",
            dependencies: [
                "BoldDeskChatSDKBinary",
                .product(name: "BoldDeskSupportSDK", package: "BoldDeskSupportSDK")
            ],
            path: "Sources"
        )
    ]
)
