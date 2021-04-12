//
//  File.swift
//  
//
//  Created by Michael Rutherford on 4/11/21.
//

import Foundation

public enum eOrderTypeOnMobileDevice {
    case Presale
    case Offtruck
    case HotShotOrderRequest
    case InMarket
    case DirectSwap
    /// This is for creating new OrderRequests.  When a request is fulfilled, the created Order will be flagged as
    case OrderRequest
    case Delivery
}
