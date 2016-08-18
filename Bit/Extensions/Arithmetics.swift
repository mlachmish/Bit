//
//  Arithmetics.swift
//  Cryptography
//
//  Created by Matan Lachmish on 05/07/2016.
//  Copyright © 2016 The Big Fat Ninja. All rights reserved.
//

import Foundation

// MARK: UInt8

/**
 UInt8 convinient arithmetic metods
 */
public extension UInt8 {

    /**
     Round rotate left.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateLeft(times: UInt8) -> UInt8 {
        return (self << times) | (self >> (8 - times))
    }

    /**
     Round rotate right.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateRight(times: UInt8) -> UInt8 {
        return (self >> times) | (self << (8 - times))
    }

}

// MARK: UInt32

/**
 UInt32 convinient arithmetic metods
 */
public extension UInt32 {

    /**
     Round rotate left.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateLeft(times: UInt32) -> UInt32 {
        return (self << times) | (self >> (32 - times))
    }

    /**
     Round rotate right.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateRight(times: UInt32) -> UInt32 {
        return (self >> times) | (self << (32 - times))
    }

    /**
     Revers the order of bytes.

     - Returns: The reversed value.
     */
    func reverseBytes() -> UInt32 {
        let tmp1 = ((self & 0x000000FF) << 24) | ((self & 0x0000FF00) << 8)
        let tmp2 = ((self & 0x00FF0000) >> 8)  | ((self & 0xFF000000) >> 24)
        return tmp1 | tmp2
    }

}

// MARK: UInt64

/**
 UInt64 convinient arithmetic metods
 */
public extension UInt64 {

    /**
     Round rotate left.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateLeft(times: UInt64) -> UInt64 {
        return (self << times) | (self >> (64 - times))
    }

    /**
     Round rotate right.

     - Parameter times: The number of rotations to be made.
     - Returns: The rotated value.
     */
    func rotateRight(times: UInt64) -> UInt64 {
        return ((self >> times) | (self << (64 - times)))
    }

    /**
     Revers the order of bytes.

     - Returns: The reversed value.
     */
    func reverseBytes() -> UInt64 {
        let tmp1 = ((self & 0x00000000000000FF) << 56) |
            ((self & 0x000000000000FF00) << 40) |
            ((self & 0x0000000000FF0000) << 24) |
            ((self & 0x00000000FF000000) << 8)

        let tmp2 = ((self & 0x000000FF00000000) >> 8)  |
            ((self & 0x0000FF0000000000) >> 24) |
            ((self & 0x00FF000000000000) >> 40) |
            ((self & 0xFF00000000000000) >> 56)

        return tmp1 | tmp2
    }

}
