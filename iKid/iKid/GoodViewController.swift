//
//  FirstViewController.swift
//  iKid
//
//  Created by Anukriti Goyal on 5/2/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var astronaut: UIButton!
    @IBOutlet weak var question: UILabel!
    var pressed = true
    
    @IBAction func seeAnswer(_ sender: Any) {
        if pressed {
            let space = UIImage(named: "space")
            astronaut.setImage(space, for: .normal)
            
            question.text = "A space bar!"
            UIView.transition(with: astronaut, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = false
            
        } else {
            let returnImage = UIImage(named: "astronaut")
            self.astronaut.setImage(returnImage, for: .normal)
            question.text = "What is an astronaut's favorite part of a computer?"
            UIView.transition(with: astronaut, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = true
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 234/255, green: 138/255, blue: 141/255, alpha: 1)
    }
    
}

