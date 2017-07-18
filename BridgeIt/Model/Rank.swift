//
//  Rank.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Rank:Int, Comparable, CustomStringConvertible {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    static func All() -> [Rank] {
        return [two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace]
    }
    
    var description: String {
        switch self {
            case .jack:  return "J";
            case .queen: return "Q";
            case .king:  return "K";
            case .ace:   return "A";
            default:    return "\(self.rawValue)";
        }
    }
}

func < (left:Rank, right:Rank) -> Bool {
    return (left.rawValue < right.rawValue)
}

extension String {
    var rankValue: Rank? {
        switch self.lowercased() {
            case "a", "ace":   return Rank.ace
            case "k", "king":  return Rank.king
            case "q", "queen": return Rank.queen
            case "j", "jack":  return Rank.jack
            case "10":         return Rank.ten
            case "9":          return Rank.nine
            case "8":          return Rank.eight
            case "7":          return Rank.seven
            case "6":          return Rank.six
            case "5":          return Rank.five
            case "4":          return Rank.four
            case "3":          return Rank.three
            case "2":          return Rank.two
            default:           return nil
        }
    }
}
