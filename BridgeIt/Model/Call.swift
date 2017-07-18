//
//  Call.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum CallType: CustomStringConvertible {
    case pass, bid, double, redouble
    
    var description: String {
        switch self {
            case .pass :    return "Pass";
            case .bid :     return "Bid";
            case .double:   return "Double";
            case .redouble: return "Redouble";
        }
    }
}

struct Call: CustomStringConvertible {
    let bidder: Seat;
    let callType: CallType;
    let bid: Bid?;
    
    init(bidder:Seat, callType:CallType, bid: Bid?) {
        assert(callType == CallType.bid && bid == nil, "No bid provided with your bid call");
        self.bidder = bidder;
        self.callType = callType;
        self.bid = bid;
    }
    
    var description: String {
        switch self.callType {
            case .bid : return "\(bidder) Bids \(bid)";
            case .pass : return "\(bidder) Passes";
            default: return  "\(bidder) \(callType)s";
        }
    }
}
