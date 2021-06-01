//
//  Side.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-14.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum Side {
  case northSouth, eastWest

  var otherSide: Side {
    switch self {
    case .eastWest: return .northSouth
    case .northSouth: return .eastWest
    }
  }

}
