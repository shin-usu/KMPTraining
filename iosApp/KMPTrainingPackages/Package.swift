// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension Array<PackageDescription.Target.Dependency> {
    static let featureDependencies: [Target.Dependency] = [.product(name: "ComposableArchitecture", package: "swift-composable-architecture")]
    static let coreModuleDependencies: [Target.Dependency] = ["KMPNativeCoroutinesAsync"]
}

let package = Package(
    name: "KMPTrainingPackages",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppFeature",
            targets: ["AppFeature"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "1.8.0")),
        .package(url: "https://github.com/rickclephas/KMP-NativeCoroutines.git", branch: "master")
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: .featureDependencies
        ),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: ["AppFeature"]
        ),
    ]
)
