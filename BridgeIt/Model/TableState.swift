//
//  TableState.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-16.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum TableState {
case
    WaitingForPlayers,
    DrawingForFirstDealer,
    ShufflingTheDeck,
    CuttingTheDeck,
    DealingTheDeck,
    WaitingForCall,
    AssessingCall,
    ChangingACall,  //FIXME - not implemented
    ClosingAuction,
    WaitingForCardPlay,
    AssessingCardPlay,
    RetractingACard,  //FIXME - not implemented
    ClosingTrick
}
