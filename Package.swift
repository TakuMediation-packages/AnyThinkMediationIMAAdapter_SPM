// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationIMAAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationIMAAdapter",
            targets: ["AnyThinkMediationIMAAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios.git", exact: "3.27.4")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIMAAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkIMAAdapter/3.27.4.2.2/AnyThinkIMAAdapter-3.27.4.2.2.zip",
            checksum: "088e7e87cd9d1e58a5c2583d5918e2e9f2a7e97713edb97ef8b7cd6558265c8d"
        ),
        .target(
            name: "AnyThinkMediationIMAAdapterTarget",
            dependencies: [
                "AnyThinkIMAAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "Sources/AnyThinkMediationIMAAdapterTarget"
        )
    ]
)
