//
//  Seat.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Seat: Int, Equatable, Comparable, Printable {
    case West = 1, North, East, South

    static func All() -> [Seat] {
        return [West, North, East, South]
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
    case .East, .West:
        return Side.EastWest
    case .North, .South:
        return Side.NorthSouth
        }
    }
    
    var otherSide: Side
    {
    return self.side.otherSide
    }
    
    var description: String {
        switch self {
        case .East:
            return "East"
        case .West:
            return "West"
        case .South:
            return "South"
        case .North:
            return "North"
        }
    }
}

func < (left:Seat, right:Seat) -> Bool {
    return (left.rawValue < right.rawValue)
}

