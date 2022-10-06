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
            //Sets up the if conditional statement
        {
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            //This statement will display currentIndex of the favoriteFoodsArray
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            //This sets the button label to display "next" which indcates that there are more items to display
            currentIndex += 1
            //This statement adds 1 to the currentIndex allowing the label to display each string in the favoriteFoodsArray
        }
        else
        {
            print("Button has been disabled")
            //Prints in the console that the button has been disabled as there are no more items to display in the array
            (buttonLabel!).isEnabled = false
            //This disables the button from further use
            
        }
        
    }
    

}

