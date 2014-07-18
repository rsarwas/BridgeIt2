//
//  Side.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Side {
    case NorthSouth, EastWest
    
    var otherSide: Side
    {
    switch self {
    case .EastWest:
        return Side.NorthSouth
    case .NorthSouth:
        return Side.EastWest
        }
    }

}