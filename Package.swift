// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwissPassLogin",
        platforms: [
            .iOS(.v12),
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwissPassLogin",
            targets: ["SwissPassLogin"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "SwissPassLogin",
                      url: "https://github.com/SchweizerischeBundesbahnen/SwissPassLoginSDK-iOS/releases/download/4.3.2/SwissPassLogin_framework-4.3.2_r250108.1654.18.zip",
                      checksum: "836085b14851bc0e085201879c9bcf2f0f6297d64979efa9e53b70bdcf6ceb02")
    ]
)
