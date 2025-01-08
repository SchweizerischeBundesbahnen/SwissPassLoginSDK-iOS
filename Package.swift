// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwissPassLogin",
        platforms: [
            .iOS(.v15),
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwissPassLogin",
            targets: ["SwissPassLogin"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "SwissPassLogin",
                      url: "https://github.com/SchweizerischeBundesbahnen/SwissPassLoginSDK-iOS/releases/download/4.3.2/SwissPassLogin_framework-4.3.2_r250108.0945.15.zip",
                      checksum: "45dd3776a93399a86bf8356a379f8b7c3fc409711658daea6f20c3dbef490e92"),
    ]
)
