// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Bagel",
    products: [
        .library(name: "Bagel", targets: ["Bagel"])
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Bagel",
            dependencies: ["CocoaAsyncSocket"],
            path: "iOS/Source",
            publicHeadersPath: "."
        )
    ],
    swiftLanguageVersions: [.v5]
)
