import PackageDescription

let package = Package(
  name: "blu.pub",
  dependencies: [
    .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 2),
    .Package(url: "https://github.com/vapor/leaf-provider.git", majorVersion: 1)
  ]
)
