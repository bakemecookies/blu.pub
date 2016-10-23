import PackageDescription

let package = Package(
  name: "blu.pub",
  dependencies: [
    .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 1)
  ]
)
