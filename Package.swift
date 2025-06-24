// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Coordinator",
    platforms: [
        .iOS(.v13),
        .macOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Coordinator", targets: ["Coordinator"])
    ],
    dependencies: [
        .package(url: "https://github.com/isanf-terra/mirror-merge.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: [
                .product(name: "Merge", package: "mirror-merge")
            ],
            path: "Sources"
        ),
    ]
)
