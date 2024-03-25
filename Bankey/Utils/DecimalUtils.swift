//
//  DecimalUtils.swift
//  Bankey
//
//  Created by eren on 26.03.2024.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
