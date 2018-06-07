//
//  SewtGameView.swift
//  demo
//
//  Created by Christopher Slade on 6/1/18.
//  Copyright © 2018 Christopher Slade. All rights reserved.
//

import UIKit

class SetGameView: UIView {

    
    var grid = Grid(layout: .aspectRatio(8.0/5.0))
    
    override func layoutSubviews() {
        super.layoutSubviews()
        grid.cellCount = subviews.count//count of subviews
        grid.frame = bounds
        //go through your array of cardView and setr their frames.
        for index in subviews.indices {
            let frm = grid[index]
            subviews[index].frame = frm!
        }

    }

}
