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
                      url: "https://github.com/SchweizerischeBundesbahnen/SwissPassLoginSDK-iOS/releases/download/4.3.3/SwissPassLogin_framework-4.3.3_r250619.1644.19.zip",
                      checksum: "b4dc3ff44b875068e10d5df331a6836b1284b06541a98fb9034bddefa1f2e6c4")
    ]
)
