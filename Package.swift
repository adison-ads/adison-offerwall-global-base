// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.0-beta5"
let checksum = "23d439c417985b4c98e46bc3272964d66d8c2661c60f555b810d10d91592e3b3"

let package = Package(
    name: "AdisonOfferwallGlobalBase",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalBase",
            targets: ["AdisonOfferwallGlobalBase", "AdisonOfferwallGlobalBaseTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: "0.28.0-beta4")
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
