//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//  Edited by Go on 03/01/2020

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        randomizeDice()
    }
    
    let diceeArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    func randomizeDice() {
        diceImageView1.image = diceeArray.randomElement()
        diceImageView2.image = diceeArray.randomElement()
    }
    
    @IBAction func rollTheDice(_ sender: UIButton) {
       randomizeDice()
    }
    
}

