//
//  GameView.swift
//  BridgeIt
//
//  Created by Regan Sarwas on 2014-07-10.
//  Copyright (c) 2014 Regan Sarwas. All rights reserved.
//

import SceneKit

class GameView: SCNView {
    
    override func mouseDown(with theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        
        // check what nodes are clicked
        let p = self.convert(theEvent.locationInWindow, from: nil)
        let hitResults = self.hitTest(p, options: nil)
        if let tappedNode = hitResults.first?.node {
            // get its material
            let material = tappedNode.geometry!.firstMaterial;
            
            // highlight it
            SCNTransaction.begin()
            SCNTransaction.animationDuration = 0.5
            
            // on completion - unhighlight
            SCNTransaction.completionBlock = {
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 0.5
                
                material!.emission.contents = NSColor.black
                
                SCNTransaction.commit()
            }
            
            material!.emission.contents = NSColor.red
            
            SCNTransaction.commit()
        }
        
        super.mouseDown(with: theEvent)
    }

}
