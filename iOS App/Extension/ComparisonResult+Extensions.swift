//
//  ComparisonResult+Extensions.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

extension ComparisonResult {
    var asCATPInt: Int {
        switch self {
        case .orderedAscending:
            return -1
        case .orderedDescending:
            return 1
        case .orderedSame:
            return 0
        }
    }
}
