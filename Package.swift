// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AkinFrontBackModels",
    platforms: [
        .iOS(.v13), // Existing iOS minimum platform version.
        .macOS(.v13) // Specify minimum macOS platform version.
    ],
    products: [
        .library(
            name: "AkinFrontBackModels",
            targets: ["AkinFrontBackModels"]),
    ],
    dependencies: [
        // Existing EncryptDecryptKey package dependency
        // Add StrongContractClient package dependency
        .package(url: "https://github.com/leodabus/StrongContractClient.git", from: "6.0.2"),
    ],
    targets: [
        .target(
            name: "AkinFrontBackModels",
            dependencies: [
                // Specify EncryptDecryptKey and StrongContractClient as dependencies for your target
                "StrongContractClient",
            ]),
        .testTarget(
            name: "FrontBackModelsTests",
            dependencies: ["AkinFrontBackModels"]),
    ]
)
