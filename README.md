# Taku (AnyThink) - iOS Google Interactive Media Ads (IMA) Mediation Adapter

The Taku (AnyThink) Google Interactive Media Ads (IMA) mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Taku (AnyThink) iOS Core SDK (`AnyThinkiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/TakuMediation-packages/AnyThinkMediationIMAAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `32704.2.2`).
4. Add the `AnyThinkMediationIMAAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/TakuMediation-packages/AnyThinkMediationIMAAdapter_SPM.git",
        exact: "32704.2.2"
    )
]
```

## Included dependencies

- [`AnyThinkiOS`](https://github.com/TakuMediation-packages/AnyThinkiOS_SPM) (>= 6.5.60)
- [`GoogleInteractiveMediaAds`](https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios) (pinned to the version certified for this adapter release)

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
