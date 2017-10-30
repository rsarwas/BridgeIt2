//
//  Bid.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-11.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

struct Bid: Equatable, Comparable, CustomStringConvertible {
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

func == (left:Bid, right:Bid) -> Bool {
    return (left.tricks == right.tricks)  && (left.suit == right.suit)
}

func < (left:Bid, right:Bid) -> Bool {
    if left.tricks == right.tricks {
        return left.suit < right.suit;
    } else {
        return left.tricks < right.tricks;
    }
}

//TODO: make .bidValue an extension on substring as well as string
extension String {
    var bidValue: Bid? {
        if let tricks = Int(String(self[self.startIndex])) {
            if 0 < tricks && tricks <= 7 {
                let suitIndex = self.index(self.startIndex, offsetBy: 1)
                //TODO: make .suitValue an extension on substring as well as string
                if let suit = String(self[suitIndex...]).suitValue {
                    return Bid(tricks: tricks, suit: suit)
                }
            }
        }
        return nil
    }
}

