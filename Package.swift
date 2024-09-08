// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TicTacToe",
    platforms: [
        .iOS(.v13)  // Минимальная поддерживаемая версия iOS
    ],
    products: [
        .library(
            name: "TicTacToe",
            targets: ["TicTacToe"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TicTacToe",
            dependencies: [],
            path: "Sources",
            resources: [
                .process("Resources")  // Если есть ресурсы
            ]
        ),
        .testTarget(
            name: "TicTacToeTests",
            dependencies: ["TicTacToe"]
        ),
    ]
)

