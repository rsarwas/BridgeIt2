//
//  TableState.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-16.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

enum TableState {
case
    waitingForPlayers,
    drawingForFirstDealer,
    shufflingTheDeck,
    cuttingTheDeck,
    dealingTheDeck,
    waitingForCall,
    assessingCall,
    changingACall,  //FIXME - not implemented
    closingAuction,
    waitingForCardPlay,
    assessingCardPlay,
    retractingACard,  //FIXME - not implemented
    closingTrick
}
