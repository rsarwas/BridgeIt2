//
//  Bid.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-11.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

struct Bid: Equatable, Comparable, Printable {
    let tricks:Int;
    let suit:Suit;
    
    init(tricks:Int, suit:Suit) {
        assert(0 < tricks, "A bid must have at least 1 trick");
        assert(tricks <= 7, "A bid cannot have more than 7 tricks");
        self.tricks = tricks;
        self.suit = suit;
    }
    
    var description: String {
        return String(format:"%d%@",tricks,suit.description)
    }
}

@infix func == (left:Bid, right:Bid) -> Bool {
    return (left.tricks == right.tricks)  && (left.suit == right.suit)
}

@infix func < (left:Bid, right:Bid) -> Bool {
    if left.tricks == right.tricks {
        return left.suit < right.suit;
    } else {
        return left.tricks < right.tricks;
    }
}


extension String {
    var bidValue: Bid? {
        if let tricks = self.substringToIndex(1).toInt() {
            if 1 < tricks && tricks <= 7 {
                if let suit = self.substringFromIndex(1).suitValue {
                    return Bid(tricks: tricks, suit: suit)
                }
            }
        }
        return nil
    }
}

