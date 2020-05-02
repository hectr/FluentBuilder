// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "FluentBuilder",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2),
    ],
    products: [
        .library(
            name: "FluentBuilder",
            targets: ["FluentBuilder"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/refined-swift/Features.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "FluentBuilder",
            dependencies: ["Features"]
        ),
        .testTarget(
            name: "FluentBuilderTests",
            dependencies: ["FluentBuilder"]
        ),
    ]
)
