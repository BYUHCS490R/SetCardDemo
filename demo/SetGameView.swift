//
//  SewtGameView.swift
//  demo
//
//  Created by Christopher Slade on 6/1/18.
//  Copyright © 2018 Christopher Slade. All rights reserved.
//

import UIKit

class SetGameView: UIView {
    
    //PublicAPI
    
    var cardViews = [SetCardView]()
    
    //add a card
    //addSubview(card)
    //setNeedsLayout
    
    //remove a card
    //card.removeFromSuperView
    
    var grid = Grid(layout: .aspectRatio(8.0/5.0))
    
    override func layoutSubviews() {
        super.layoutSubviews()
        grid.cellCount = cardViews.count//count of subviews
        grid.frame = frame
        //go through your array of cardView and setr their frames.
        let frm = grid[0]
    }

}
