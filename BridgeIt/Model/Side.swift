//
//  Side.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import Foundation

enum Side {
    case northSouth, eastWest
    
    var otherSide: Side
    {
    switch self {
    case .eastWest:
        return Side.northSouth
    case .northSouth:
        return Side.eastWest
        }
    }

}
