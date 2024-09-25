// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.0-beta1"
let checksum = ""

let package = Package(
    name: "AdisonOfferwallGlobalBase",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalBase",
            targets: ["AdisonOfferwallGlobalBase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-core", exact: "0.28.0-beta1")
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
                .product(name: "AdisonOfferwallGlobalBase", package: "adison-offerwall-global-base")
            ],
            path: "Sources"
        )
    ]
)
