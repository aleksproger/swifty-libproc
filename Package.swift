// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swifty-libproc",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Libproc", targets: ["Libproc"]),
    ],
    targets: [
        .target(name: "LibprocShim", dependencies: ["Libproc"]),
        .systemLibrary(name: "Libproc")
    ]
)
