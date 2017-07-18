//
//  Seat.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Seat: Int, Equatable, Comparable, CustomStringConvertible {
    case west = 1, north, east, south

    static func All() -> [Seat] {
        return [west, north, east, south]
    }
    
    var rightHandOpponent: Seat
    {
        var seat = self.rawValue - 1;
        if seat < 1 {
            seat = 4
        }
        return Seat(rawValue: seat)!
    }
    
    var leftHandOpponent: Seat
    {
    var seat = self.rawValue + 1;
        if 4 < seat {
            seat = 1
        }
        return Seat(rawValue: seat)!
    }
    
    var nextSeat: Seat
    {
        return self.leftHandOpponent
    }
    
    var side: Side
    {
    switch self {
    case .east, .west:
        return Side.eastWest
    case .north, .south:
        return Side.northSouth
        }
    }
    
    var otherSide: Side
    {
    return self.side.otherSide
    }
    
    var description: String {
        switch self {
        case .east:
            return "East"
        case .west:
            return "West"
        case .south:
            return "South"
        case .north:
            return "North"
        }
    }
}

func < (left:Seat, right:Seat) -> Bool {
    return (left.rawValue < right.rawValue)
}

