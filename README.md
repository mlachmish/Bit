<p align="center">
<img src="assets/Bit.png?raw=true" alt="Bit">
</p>

<p align = "center">
    <a href="https://developer.apple.com/swift">
      <img src="https://img.shields.io/badge/language-swift-orange.svg?style=flat" alt="Language">
    </a>
    <a href="https://developer.apple.com">
      <img src="https://img.shields.io/badge/platform-linux%20%7C%20osx%20%7C%20ios%20%7C%20watchos%20%7C%20tvos-lightgrey.svg?style=flat" alt="Platform">
    </a>
    <a href="https://raw.githubusercontent.com/mlachmish/Bit/blob/master/LICENSE">
      <img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="MIT licensed">
    </a>
  <br>
    <a href="https://travis-ci.org/mlachmish/Bit">
      <img src="https://travis-ci.org/mlachmish/Bit.svg?style=flat&branch=master" alt="Build Status">
    </a>
    <a href="https://www.codacy.com/app/mlachmish/Bit">
      <img src="https://api.codacy.com/project/badge/Grade/137aa31f62464045aad5f190123fdf67?style=flat" alt="Code Quality">
    </a>
    <a href="https://codecov.io/gh/mlachmish/Bit">
      <img src="https://codecov.io/gh/mlachmish/Bit/branch/master/graph/badge.svg?style=flat" alt="Code Coverage">
    </a>
  <br>
      <a href="https://cocoapods.org/pods/Bit">
        <img src="https://img.shields.io/cocoapods/v/Bit.svg?style=flat"
             alt="CocoaPods">
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"
             alt="Carthage">
    </a>
</p>

<br>
<p align="center">Super light Bit operation library in Swift.</p>
<p align="center">
  <a href="#features">Features</a>
  • <a href="#usage">Usage</a>
  • <a href="#installation">Installation</a>
  • <a href="http://cocoadocs.org/docsets/Bit">Documentation</a>
  • <a href="#author">Author</a>
  • <a href="#license">License</a>
</p>

## Features

Full support of ```UInt8```, ```UInt32``` and ```UInt64```.

- [x] Byte accesors
- [x] Bitwise arithmetic
- [x] Representation convertors

## Usage

* [Accesors Functions](#accesors-functions)
* [Bitwise arithmetic](#bitwise-arithmetic)
* [Representation convertors](#representation-convertors)

### Accesors Functions

```swift
    let val1 = 0xA5C964F2 as UInt32
    val1.firstByte  //0xF2
    val1.secondByte //0x64
    val1.thirdByte  //0xC9
    val1.fourthByte //0xA5
```

### Bitwise arithmetic

```swift
    let val1 = 0x00000001 as UInt32
    val1.rotateLeft(0x00000002)     //0x00000004
    val1.rotateRight(0x00000002)    //0x40000000
    val1.reverseBytes()             //0x01000000
```

### Representation convertors

```swift
    Representations.toUInt8Array(64)    //[UInt8(0x00), UInt8(0x00), UInt8(0x00), UInt8(0x00), UInt8(0x00), UInt8(0x00), UInt8(0x00), UInt8(0x40)]
    
    Representations.mergeToUInt32Array([UInt8(0x01), UInt8(0x01), UInt8(0x01), UInt8(0x01),UInt8(0x01), UInt8(0x01), UInt8(0x01), UInt8(0x01)])       //UInt32(0x01010101), UInt32(0x01010101)]
    
    Representations.toHexadecimalString([UInt8(0x01), UInt8(0x01), UInt8(0x01), UInt8(0x01)])   //"01010101"
```

## Installation

### Compatibility

- OS X 10.9+ / iOS 8.0+ / watchOS 2.0 / tvOS 9.0

- Xcode 7.1+, Swift 2.1+

### Install Using CocoaPods
[CocoaPods](https://cocoapods.org/) is a centralized dependency manager for
Objective-C and Swift. Go [here](https://guides.cocoapods.org/using/index.html)
to learn more.

1. Add the project to your [Podfile](https://guides.cocoapods.org/using/the-podfile.html).

    ```ruby
    use_frameworks!

    pod 'Bit'
    ```

2. Run `pod install` and open the `.xcworkspace` file to launch Xcode.

3. Import the Cryptography framework.

    ```swift
    import Bit
    ```

### Install Using Carthage
[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency
manager for Objective-C and Swift.

1. Add the project to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile).

    ```
    github "mlachmish/Bit"
    ```

2. Run `carthage update` and follow [the additional steps](https://github.com/Carthage/Carthage#getting-started)
   in order to add Cryptography to your project.

3. Import the Cryptography framework.

    ```swift
    import Bit
    ```
    
###Swift Package Manager
You can use [Swift Package Manager](https://swift.org/package-manager/) and specify dependency in `Package.swift` by adding this:
```
.Package(url: "https://github.com/mlachmish/Bit.git", majorVersion: 0)
```

### Manually
Download and drop ```/Bit``` folder in your project.

## Author

Matan Lachmish <sub>a.k.a</sub> <b>The Big Fat Ninja</b> <img src="assets/TheBigFatNinja.png?raw=true" alt="The Big Fat Ninja" width="13"><br>
https://thebigfatninja.xyz

### attribution

Icon made by <a title="Freepik" href="http://www.freepik.com">Freepik</a> from <a title="Flaticon" href="http://www.flaticon.com">www.flaticon.com</a>

## License

Bit is available under the MIT license. See the LICENSE file for more info.
