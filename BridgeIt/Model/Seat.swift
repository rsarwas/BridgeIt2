//
//  Seat.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum Seat: CaseIterable, Equatable, Comparable {
  case west, north, east, south
}

extension Seat {
  var rightHandOpponent: Seat {
    switch self {
    case .west: return .north
    case .north: return .east
    case .east: return .south
    case .south: return .west
    }
  }

  var leftHandOpponent: Seat {
    switch self {
    case .west: return .south
    case .north: return .west
    case .east: return .north
    case .south: return .east
    }
  }

  var nextSeat: Seat {
    return self.leftHandOpponent
  }

  var side: Side {
    switch self {
    case .east, .west: return .eastWest
    case .north, .south: return .northSouth
    }
  }

  var otherSide: Side {
    return self.side.otherSide
  }
}

extension Seat: CustomStringConvertible {
  var description: String {
    switch self {
    case .east: return "East"
    case .west: return "West"
    case .south: return "South"
    case .north: return "North"
    }
  }
}
