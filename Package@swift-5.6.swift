// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CocoaLumberjack",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CocoaLumberjack",
            type: .dynamic,
            targets: ["CocoaLumberjack"]),
        .library(
            name: "CocoaLumberjackSwift",
            type: .dynamic,
            targets: ["CocoaLumberjackSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CocoaLumberjack",
            exclude: ["Supporting Files"]),
        .target(
            name: "CocoaLumberjackSwiftSupport",
            dependencies: ["CocoaLumberjack"]),
        .target(
            name: "CocoaLumberjackSwift",
            dependencies: [
                "CocoaLumberjack",
                "CocoaLumberjackSwiftSupport"
            ],
            exclude: ["Supporting Files"]),
        .testTarget(
            name: "CocoaLumberjackTests",
            dependencies: ["CocoaLumberjack"]),
        .testTarget(
            name: "CocoaLumberjackSwiftTests",
            dependencies: ["CocoaLumberjackSwift"]),
    ]
)
