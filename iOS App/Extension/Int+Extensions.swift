//
//  Int+Extensions.swift
//  CATP13-Swift
//
//  Created by Txai Wieser on 16/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

extension Int {
    /**
     * Returns a random integer in the range min...max, inclusive.
     */
    public static func random(min: Int, max: Int) -> Int {
        assert(min < max)
        return Int(arc4random_uniform(UInt32(max - min + 1))) + min
    }
}
