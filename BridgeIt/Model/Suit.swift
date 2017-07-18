//
//  Suit.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Suit:Int, Comparable, CustomStringConvertible {
    case clubs = 1, diamonds, hearts, spades, noTrump
    
    static func All() -> [Suit] {
        return [clubs, diamonds, hearts, spades]
    }
    
    static func Bids() -> [Suit] {
        return self.All() + [.noTrump]
    }
    
    var description: String {
        switch self {
            case .spades:   return "\u{2660}";
            case .hearts:   return "\u{2665}";
            case .diamonds: return "\u{2666}";
            case .clubs:    return "\u{2663}";
            case .noTrump:  return "NT";
        }
    }
}

func < (left:Suit, right:Suit) -> Bool {
    return (left.rawValue < right.rawValue)
}

extension String {
    var suitValue: Suit? {
        switch self {
            case "\u{2663}": return Suit.clubs
            case "\u{2666}": return Suit.diamonds
            case "\u{2665}": return Suit.hearts
            case "\u{2660}": return Suit.spades
            default:
                switch self.lowercased() {
                    case "c", "clubs":      return Suit.clubs
                    case "d", "diamonds":   return Suit.diamonds
                    case "h", "hearts":     return Suit.hearts
                    case "s", "spades":     return Suit.spades
                    case "nt", "no trump",
                         "none", "notrump": return Suit.noTrump
                    default:                return nil
                }
        }
    }
}
