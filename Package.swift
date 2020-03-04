// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ratio",
    products: [
        .library(name: "Ratio", targets: ["Ratio"]),
    ],
    targets: [
        .target(name: "Ratio"),
        .testTarget(name: "RatioTests", dependencies: ["Ratio"]),
    ]
)
