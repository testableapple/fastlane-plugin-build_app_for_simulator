# fastlane-plugin-build_app_for_simulator

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-build_app_for_simulator)

## About build_app_for_simulator

This plugin builds apps exclusively for iOS, tvOS or watchOS Simulators 🚀

## Parameters

| **Key** | **Description** | **Default** |
| ------- |---------------- | ----------- |
| `output_directory` | The directory in which the app file should be stored in | `.` |
| `workspace` | Path to the workspace file | |
| `project` | Path to the project file | |
| `scheme` | The project's scheme. Make sure it's marked as `Shared` | |
| `platform` | Use a custom simulator destination for building the app (`iOS`, `tvOS` or `watchOS`) | `iOS` |
| `configuration` | The configuration to use when building the app | `Debug` |
| `derived_data_path` | The directory where built products and other derived data will go | |
| `result_bundle_path` | Path to the result bundle directory to create | |
| `buildlog_path` | The directory where to store the build log | |
| `raw_buildlog` | Set to `true` to see xcodebuild raw output | `false` |
| `xcargs` | Pass additional xcodebuild options. Be sure to quote the setting names and values e.g. OTHER_LDFLAGS='-ObjC -lstdc++' | |

## Requirements

* [Xcode](https://developer.apple.com/downloads)
* [Xcode Command Line Tools](http://railsapps.github.io/xcode-command-line-tools.html)

## Getting Started

To get started with `build_app_for_simulator`, add it to your project by running:

```bash
$ fastlane add_plugin build_app_for_simulator
```

## Usage

```ruby
build_app_for_simulator(
  scheme: 'AppName',
  workspace: 'Example.xcworkspace',
  configuration: 'Release',
  output_directory: 'build'
)
```

## Lane Variables

| **SharedValue**                         | **Description**                          |
| --------------------------------------- | ---------------------------------------- |
| SharedValues::SIMULATOR_APP_OUTPUT_PATH | The path to the newly generated app file |
