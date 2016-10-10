//
//  Array+Extensions.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

extension Array where Element: CATPComparable {
    func mySort() -> Array<Element> {
        let sortedValues = sorted { (obj1, obj2) -> Bool in
            let compareIntResult = obj1.compares_to(obj: obj2)
            let shouldChange = (compareIntResult == ComparisonResult.orderedDescending.asCATPInt)
            
            return shouldChange
        }
        return sortedValues
    }
}
