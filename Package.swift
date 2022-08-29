// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Jumio",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Jumio",
            targets: ["Jumio"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .binaryTarget(
//            name: "LineFinder",
//            path: "./Sources/JumioLineFinder/Jumio.xcframework"
//        ),
        .target(
            name: "Jumio"
        ),
        .binaryTarget(
            name: "Jumio",
            url: "https://repo.mobile.jumio.ai/com/jumio/ios/jumio-mobile-sdk/4.2.0/ios-jumio-mobile-sdk-4.2.0.zip",
            checksum: "01db5f3332a4b9b4b27234995f77ae23fc3ee9b7f92c9e7bcfefc847d758b54c"
        )
    ],
    swiftLanguageVersions: [.v5]
)
