// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.2"
let checksum = "b489ed25452ad6ad722e977c876ef5c3c934b9a28a27af0b772a6f2dcd47c104"

let package = Package(
    name: "AdisonOfferwallGlobalBase",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalBase",
            targets: ["AdisonOfferwallGlobalBase", "AdisonOfferwallGlobalBaseTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: "0.28.2")
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
