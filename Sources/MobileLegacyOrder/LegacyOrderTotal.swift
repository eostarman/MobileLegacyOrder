//
//  MobileOrderTotal.swift
//  MobileBench
//
//  Created by Michael Rutherford on 9/12/20.
//

import Foundation
import MoneyAndExchangeRates

public struct LegacyOrderTotal {
    public var totalFrontlinePrice: MoneyWithoutCurrency = .zero
    public var totalDiscount: MoneyWithoutCurrency = .zero
    public var totalDeposit: MoneyWithoutCurrency = .zero

    public var totalDue: MoneyWithoutCurrency {
        totalFrontlinePrice - totalDiscount + totalDeposit
    }

    public init(_ lines: [LegacyOrderLineTotal]) {
        for line in lines {
            totalFrontlinePrice += line.totalFrontlinePrice
            totalDiscount += line.totalDiscount
            totalDeposit += line.totalDeposit
        }
    }
}
