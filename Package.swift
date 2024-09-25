// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.0"
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
        .package(
            url: offerwallRepoURL,
            exact: offerwallExactVersion
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // .binaryTarget(
        //     name: "AdisonOfferwallGlobalBase",
        //     url: """
        //     https://github.com/adison-ads/adison-offerwall-global-base/releases/download/\(version)/\
        //     AdisonOfferwallGlobalBase.zip
        //     """,
        //     checksum: checksum
        // )
    ]
)
