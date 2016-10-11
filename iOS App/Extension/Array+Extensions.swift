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
            let shouldChange = (compareIntResult == ComparisonResult.orderedAscending.asCATPInt)
            print("Should change '\((obj1 as! Aluno).getNome())' por `\((obj2 as! Aluno).getNome())`: \(shouldChange)")
            return shouldChange
        }
        return sortedValues
    }
}

