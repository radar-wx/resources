// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "weather-app-resources",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "WeatherKitLegal",
            targets: ["weather-kit-legal"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gonzalezreal/swift-markdown-ui", from: "2.0.2")
    ],
    targets: [
        .target(
            name: "weather-kit-legal",
            dependencies: [
                .product(name: "MarkdownUI", package: "swift-markdown-ui")
            ],
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "weather-kit-legalTests",
            dependencies: ["weather-kit-legal"]),
    ]
)
