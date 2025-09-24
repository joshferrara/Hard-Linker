// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HardLinkCreator",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "HardLinkCreator", targets: ["HardLinkCreator"])
    ],
    targets: [
        .executableTarget(
            name: "HardLinkCreator"
        ),
    ]
)
