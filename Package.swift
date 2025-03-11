// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SS58",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SS58",
            targets: ["SS58"]),
    ],
    dependencies: [
        .package(url: "https://github.com/fish-yan/Base58", from: "0.0.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SS58",
            dependencies: ["Base58", "CryptoSwift"]
        ),
        .testTarget(
            name: "SS58Tests",
            dependencies: ["SS58"]
        ),
    ]
)
