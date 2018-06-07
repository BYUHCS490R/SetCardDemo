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
        gameView.addSubview(cardView)
        gameView.subviews.count != 0 //gamee.cardInPlay.count
        if let cardView = gameView.subviews[0] as? SetCardView
    }
    
    //upadteUI()
    //,make sure the number of cards in the game == number of subviews
    //for each card in cardsInPlay
    //    set properties of the subviews of gameView.
    
}
