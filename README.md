# QuerySize

A tasty bit of Swift to make writing device and/or screen size specific code easier.

## Requirements

* iOS 7.0+ / OS X 10.9+
* Xcode 6.3+

> While QuerySize supports iOS 7.0, frameworks are not supported for iOS 7.0 so you must manually embed the framework for non app store apps or integrate the source files directly.

## Installing

The first thing you’ll need to do with QuerySize is get it installed into your project. We support three different integrations:

### Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate QuerySize into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'QuerySize', '~> 1.0.0'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

Carthage is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate QuerySize into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github "robertjpayne/QuerySize" >= 1.0.0
```

### Embedded Framework

- Add QuerySize as a [submodule](http://git-scm.com/docs/git-submodule) by opening the Terminal, `cd`-ing into your top-level project directory, and entering the following command:

```bash
$ git submodule add https://github.com/robertjpayne/QuerySize.git
```

- Open the `QuerySize` folder, and drag `QuerySize.xcodeproj` into the file navigator of your app project.
- In Xcode, navigate to the target configuration window by clicking on the blue project icon, and selecting the application target under the "Targets" heading in the sidebar.
- Ensure that the deployment target of `QuerySize.framework` matches that of the application target.
- In the tab bar at the top of that window, open the "Build Phases" panel.
- Expand the "Target Dependencies" group, and add `QuerySize.framework`.
- Click on the `+` button at the top left of the panel and select "New Copy Files Phase". Rename this new phase to "Copy Frameworks", set the "Destination" to "Frameworks", and add `QuerySize.framework`.


## Usage

```swift
import QuerySize

// ...

QuerySize(.ByIdiom(.Phone)) {
    println("I am a phone")
}
QuerySize(.ByIdiom(.Pad)) {
    println("I am a pad")
}

QuerySize(.ByIdiom(.Phone), .ByScreenMinWidth(321)) {
    println("I am a phone at least 321pt wide")
}

QuerySize(.ByIdiom(.Phone), .ByScreenMaxWidth(320)) {
    println("I am a phone at most 320pt wide")
}

QuerySize(.ByIdiom(.Phone), .ByScreenMaxWidth(320), .ByScreenMaxHeight(480)) {
    println("I am a phone at most 320pt wide and 480pt high")
}

QuerySize(.ByIdiom(.Phone), .ByScreenMaxWidth(320), .ByScreenMinHeight(481)) {
    println("I am a phone at most 320pt wide and at least 481pt high")
}

```
