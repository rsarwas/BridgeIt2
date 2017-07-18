//
//  Contract.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

struct Contract: Equatable, Comparable, CustomStringConvertible {
    let doubles:Int;
    let bid:Bid;
    
    init(doubles:Int, bid:Bid) {
        assert(0 <= doubles, "A contract must have at least 0 doubles");
        assert(doubles <= 2, "A contract cannot have more than 2 doubles");
        self.doubles = doubles;
        self.bid = bid;
    }
    
    init(bid:Bid) {
        self.doubles = 0;
        self.bid = bid;
    }
    
    var description: String {
        return bid.description + (doubles == 0 ? "" : (doubles == 1 ? " Doubled" : " Redoubled"))
    }
}

func == (left:Contract, right:Contract) -> Bool {
    return (left.doubles == right.doubles)  && (left.bid == right.bid)
}

func < (left:Contract, right:Contract) -> Bool {
    if left.bid == right.bid {
        return left.doubles < right.doubles;
    } else {
        return left.bid < right.bid;
    }
}
