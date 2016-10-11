//
//  String+Extensions.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 11/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

extension String {
    
    static func generateRandomString(withLength length: Int) -> String {
        
        let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        
        let randomString = NSMutableString(capacity: length)
        
        for _ in 0..<length {
            let lettersLength = UInt32(letters.length)
            let rand = arc4random_uniform(lettersLength)
            randomString.appendFormat("%C", letters.character(at: Int(rand)))
        }
        
        return randomString as String
    }
}
