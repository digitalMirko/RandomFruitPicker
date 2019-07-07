//
//  ViewController.swift
//  Random Fruit Picker
//
//  Created by Mirko Cukich on 7/6/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Top title and fruit name text label
    @IBOutlet weak var nameLabel: UILabel!
    // Fruit image in the middle
    @IBOutlet weak var fruitImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // Picker button
    @IBAction func pickButton(_ sender: Any) {
        
        // fruit array
        let fruitArray = ["Apple","Bananas","Cherries","Grapes","Lemon","Orange","Pear","Strawberry"]
        
        // randomly selected fruit item
        let chosenFruit: String? = fruitArray.randomElement()
        
        // top label text
        nameLabel.text = chosenFruit
        
        // fruit selected image shown
        if let imageToLoad = chosenFruit {
            fruitImageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
}

