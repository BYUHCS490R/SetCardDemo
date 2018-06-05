//
//  SetGameViewController.swift
//  demo
//
//  Created by Christopher Slade on 6/1/18.
//  Copyright © 2018 Christopher Slade. All rights reserved.
//

import UIKit

class SetGameViewController: UIViewController {
    
    @IBOutlet weak var gameView: SetGameView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //doesn't go here
        let cardView = SetCardView(frame: CGRect.zero)
        //add gestures
        //gameView.addCard(cardView)
        
    }
    
    //upadteUI()
    
}
