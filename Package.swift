// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftExtension",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SwiftExtension",
            targets: ["SwiftExtension"]),
    ],
    targets: [
        .target(
            name: "SwiftExtension",
            dependencies: [
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftExtensionTests",
            dependencies: ["SwiftExtension"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
