// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "radar-wx-resources",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "RadarWXLegal",
            targets: ["RadarWXLegal"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gonzalezreal/swift-markdown-ui", from: "2.0.2")
    ],
    targets: [
        .target(
            name: "RadarWXLegal",
            dependencies: [
                .product(name: "MarkdownUI", package: "swift-markdown-ui")
            ],
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "radar-wx-legalTests",
            dependencies: ["RadarWXLegal"]),
    ]
)
