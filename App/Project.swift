import ProjectDescription

let emptyBase: [String: SettingValue] = [:]
let configurations: [CustomConfiguration] = [
    .debug(name: "Debug", xcconfig: Path("Example.xcconfig")),
    .release(name: "Release", xcconfig: Path("Example.xcconfig"))
]
let settings = Settings(base: emptyBase, configurations: configurations, defaultSettings: .none)
let target = Target(
                name: "Example",
                platform: .iOS,
                product: .staticFramework,
                bundleId: "com.example.swiftversion",
                infoPlist: InfoPlist(stringLiteral: "App.plist"),
                sources: "Sources/**",
                settings: settings
            )
let project = Project(
    name: "ExampleSwiftVersion",
    settings: settings, 
    targets: [target]
)

