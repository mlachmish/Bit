//
//  Accessors.swift
//  Cryptography
//
//  Created by Matan Lachmish on 06/07/2016.
//  Copyright © 2016 The Big Fat Ninja. All rights reserved.
//

import Foundation

// MARK: UInt32

/**
 UInt32 convinient accessor metods
 */
public extension UInt32 {

    /**
     The first byte - little-endian
     */
    var firstByte: UInt8 {
        return UInt8(self & 0xff)
    }

    /**
     The second byte - little-endian
     */
    var secondByte: UInt8 {
        return UInt8((self >> 8) & 0xff)
    }

    /**
     The third byte - little-endian
     */
    var thirdByte: UInt8 {
        return UInt8((self >> 16) & 0xff)
    }

    /**
     The fourth byte - little-endian
     */
    var fourthByte: UInt8 {
        return UInt8((self >> 24) & 0xff)
    }

}

// MARK: UInt64

/**
 UInt64 convinient accessor metods
 */
public extension UInt64 {

    /**
     The first byte - little-endian
     */
    var firstByte: UInt8 {
        return UInt8(self & 0xff)
    }

    /**
     The second byte - little-endian
     */
    var secondByte: UInt8 {
        return UInt8((self >> 8) & 0xff)
    }

    /**
     The third byte - little-endian
     */
    var thirdByte: UInt8 {
        return UInt8((self >> 16) & 0xff)
    }

    /**
     The fourth byte - little-endian
     */
    var fourthByte: UInt8 {
        return UInt8((self >> 24) & 0xff)
    }

    /**
     The fifth byte - little-endian
     */
    var fifthByte: UInt8 {
        return UInt8((self >> 32) & 0xff)
    }

    /**
     The six byte - little-endian
     */
    var sixthByte: UInt8 {
        return UInt8((self >> 40) & 0xff)
    }

    /**
     The seven byte - little-endian
     */
    var seventhByte: UInt8 {
        return UInt8((self >> 48) & 0xff)
    }

    /**
     The eight byte - little-endian
     */
    var eighthByte: UInt8 {
        return UInt8((self >> 56) & 0xff)
    }

}
