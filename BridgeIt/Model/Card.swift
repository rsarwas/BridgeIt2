//
//  Card.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-10.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Suit:Int, Comparable, Printable {
    case Clubs = 1, Diamonds, Hearts, Spades, NoTrump
    
    static func All() -> [Suit] {
        return [.Clubs,.Diamonds,.Hearts,.Spades]
    }
    static func Bids() -> [Suit] {
        return self.All() + [.NoTrump]
    }
    var description: String {
        return "suit";
    }
}

enum Rank:Int, Comparable {
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
}

@infix func < (left:Suit, right:Suit) -> Bool {
    return (left.toRaw() < right.toRaw())
}

@infix func < (left:Rank, right:Rank) -> Bool {
    return (left.toRaw() < right.toRaw())
}

extension String {
    var suitValue: Suit? {
    switch self.lowercaseString {
    case "c", "clubs":
        return Suit.Clubs
    case "d", "diamonds":
        return Suit.Diamonds
    case "h", "hearts":
        return Suit.Hearts
    case "s", "spades":
        return Suit.Spades
    case "nt", "no trump", "none", "notrump":
        return Suit.NoTrump
    default:
        return nil
        }
    }
}