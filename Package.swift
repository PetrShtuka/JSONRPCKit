// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "JSONRPCKit",
    products: [
        .library(name: "JSONRPCKit", targets: ["JSONRPCKit"]),
    ],
    dependencies: [
        .package(path: "../JSONRPCKit/APIKit"),
        .package(path: "../JSONRPCKit/Result"),
    ],
    targets: [
        .target(name: "JSONRPCKit", dependencies: ["Result", "APIKit"]),
        .testTarget(name: "JSONRPCKitTests", dependencies: ["JSONRPCKit"]),
    ],
    swiftLanguageVersions: [.v5]
)

