//
//  Suit.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum Suit: CaseIterable, Equatable, Comparable {
  case clubs, diamonds, hearts, spades, noTrump

  static func Bids() -> [Suit] {
    return self.allCases + [.noTrump]
  }
}

extension Suit: CustomStringConvertible {
  var description: String {
    switch self {
    case .spades: return "♠"
    case .hearts: return "♥"
    case .diamonds: return "♦"
    case .clubs: return "♣"
    case .noTrump: return "NT"
    }
  }
}

extension String {
  var suitValue: Suit? {
    switch self {
    case "♣", "♧": return .clubs
    case "♦", "♢": return .diamonds
    case "♥", "♡": return .hearts
    case "♠", "♤": return .spades
    default:
      switch self.lowercased() {
      case "c", "clubs": return .clubs
      case "d", "diamonds": return .diamonds
      case "h", "hearts": return .hearts
      case "s", "spades": return .spades
      case "nt", "no trump", "none", "notrump": return .noTrump
      default: return nil
      }
    }
  }
}
