// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.2.2"
let checksum = "02aa1848c1ed2652fd504f405c50f4fec29815ca9c28c99abe94d59c618a92da"

let coreVersion = "1.2.2"

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
