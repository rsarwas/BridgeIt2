//
//  Call.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum CallType: Printable {
    case Pass, Bid, Double, Redouble
    
    var description: String {
        switch self {
            case Pass :    return "Pass";
            case Bid :     return "Bid";
            case Double:   return "Double";
            case Redouble: return "Redouble";
        }
    }
}

struct Call: Printable {
    let bidder: Seat;
    let callType: CallType;
    let bid: Bid?;
    
    init(bidder:Seat, callType:CallType, bid: Bid?) {
        assert(callType == CallType.Bid && bid == nil, "No bid provided with your bid call");
        self.bidder = bidder;
        self.callType = callType;
        self.bid = bid;
    }
    
    var description: String {
        switch self.callType {
            case .Bid : return "\(bidder) Bids \(bid)";
            case .Pass : return "\(bidder) Passes";
            default: return  "\(bidder) \(callType)s";
        }
    }
}
