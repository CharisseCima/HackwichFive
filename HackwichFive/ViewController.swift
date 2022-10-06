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
    
    //Part 8: #4 Button Label IBOutlet
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 5: Set topLabel text
        
        topLabel.text = "My Favorite Foods"
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    }

    //Part 8
    @IBAction func buttonPressed(_ sender: Any) {
        
        if self.currentIndex < self.favoriteFoodsArray.count
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            currentIndex+=1
        }
        else
        {
            print("Button has been disabled")
            (buttonLabel!).isEnabled = false
            
        }
        
    }
    

}

