// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.0"
let checksum = "0ceaf374e8a62c26df5ac825fe8eb739b320b01a27ccc3b9bda65adb17bea227"

let coreVersion = "1.3.0"

let package = Package(
    name: "AdisonOfferwallGlobalBase",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalBase",
            targets: ["AdisonOfferwallGlobalBase", "AdisonOfferwallGlobalBaseTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: Version(stringLiteral: coreVersion))
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalBase",
            url: "https://github.com/adison-ads/adison-offerwall-global-base/releases/download/\(version)/AdisonOfferwallGlobalBase.zip",
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallGlobalBaseTarget",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalCore", package: "adison-offerwall-global-core")
            ],
            path: "Sources"
        )
    ]
)
