//
//  ViewController.swift
//  HackwichFive
//
//  Created by Christian Cimafranca on 10/5/22.
//  Copyright © 2022 Charisse Cimafranca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Part 4: Created IBOutlets
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    //Part 6: declaring variables
    var currentIndex = 0
    var favoriteFoodsArray = ["Chicken Katsu", "Chocolate Chip Cookies", "Fried rice", "Donuts", "Barbeque"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 5: Set topLabel text
        
        topLabel.text = "My Favorite Foods"
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    }


}

