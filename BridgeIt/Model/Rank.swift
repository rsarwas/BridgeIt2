//
//  Rank.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Rank:Int, Comparable, CustomStringConvertible {
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
    
    static func All() -> [Rank] {
        return [Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace]
    }
    
    var description: String {
        switch self {
            case Jack:  return "J";
            case Queen: return "Q";
            case King:  return "K";
            case Ace:   return "A";
            default:    return "\(self.rawValue)";
        }
    }
}

func < (left:Rank, right:Rank) -> Bool {
    return (left.rawValue < right.rawValue)
}

extension String {
    var rankValue: Rank? {
        switch self.lowercaseString {
            case "a", "ace":   return Rank.Ace
            case "k", "king":  return Rank.King
            case "q", "queen": return Rank.Queen
            case "j", "jack":  return Rank.Jack
            case "10":         return Rank.Ten
            case "9":          return Rank.Nine
            case "8":          return Rank.Eight
            case "7":          return Rank.Seven
            case "6":          return Rank.Six
            case "5":          return Rank.Five
            case "4":          return Rank.Four
            case "3":          return Rank.Three
            case "2":          return Rank.Two
            default:           return nil
        }
    }
}