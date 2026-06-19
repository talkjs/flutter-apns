// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "talkjs_flutter_apns_only",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "talkjs-flutter-apns-only", targets: ["talkjs_flutter_apns_only"])
    ],
    dependencies: [
      .package(name: "FlutterFramework", path: "../FlutterFramework"),
    ],
    targets: [
        .target(
            name: "talkjs_flutter_apns_only",
            dependencies: [
              .target(name: "talkjs_flutter_apns_only_objc"),
              .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
        ),
        // Objective-C target
        .target(
            name: "talkjs_flutter_apns_only_objc",
            dependencies: [],
            path: "Sources/talkjs_flutter_apns_only_objc",
            publicHeadersPath: "include"
        )
    ]
)

