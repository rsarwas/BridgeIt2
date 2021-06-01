//
//  .swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-17.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum Rank: Int, CaseIterable {
  case two = 2
  case three, four, five, six, seven, eight, nine, ten
  case jack, queen, king, ace
}

extension Rank: CustomStringConvertible {
  var description: String {
    switch self {
    case .jack: return "J"
    case .queen: return "Q"
    case .king: return "K"
    case .ace: return "A"
    default: return "\(self.rawValue)"
    }
  }
}

extension Rank: Comparable {
  static func < (left: Rank, right: Rank) -> Bool {
    return (left.rawValue < right.rawValue)
  }
}

extension String {
  var rankValue: Rank? {
    switch self.lowercased() {
    case "a", "ace": return .ace
    case "k", "king": return .king
    case "q", "queen": return .queen
    case "j", "jack": return .jack
    case "10": return .ten
    case "9": return .nine
    case "8": return .eight
    case "7": return .seven
    case "6": return .six
    case "5": return .five
    case "4": return .four
    case "3": return .three
    case "2": return .two
    default: return nil
    }
  }
}
