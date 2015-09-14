//
//  Suit.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Suit:Int, Comparable, Printable {
    case Clubs = 1, Diamonds, Hearts, Spades, NoTrump
    
    static func All() -> [Suit] {
        return [Clubs, Diamonds, Hearts, Spades]
    }
    
    static func Bids() -> [Suit] {
        return self.All() + [.NoTrump]
    }
    
    var description: String {
        switch self {
            case Spades:   return "\u{2660}";
            case Hearts:   return "\u{2665}";
            case Diamonds: return "\u{2666}";
            case Clubs:    return "\u{2663}";
            case NoTrump:  return "NT";
        }
    }
}

func < (left:Suit, right:Suit) -> Bool {
    return (left.rawValue < right.rawValue)
}

extension String {
    var suitValue: Suit? {
        switch self {
            case "\u{2663}": return Suit.Clubs
            case "\u{2666}": return Suit.Diamonds
            case "\u{2665}": return Suit.Hearts
            case "\u{2660}": return Suit.Spades
            default:
                switch self.lowercaseString {
                    case "c", "clubs":      return Suit.Clubs
                    case "d", "diamonds":   return Suit.Diamonds
                    case "h", "hearts":     return Suit.Hearts
                    case "s", "spades":     return Suit.Spades
                    case "nt", "no trump",
                         "none", "notrump": return Suit.NoTrump
                    default:                return nil
                }
        }
    }
}
