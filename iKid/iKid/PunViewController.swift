//
//  SecondViewController.swift
//  iKid
//
//  Created by Anukriti Goyal on 5/2/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {

    @IBOutlet weak var pizza: UIButton!
    @IBOutlet weak var question: UILabel!
    var pressed = true
    
    @IBAction func seeAnswer(_ sender: Any) {
        if pressed {
            let cheese = UIImage(named: "cheese")
            pizza.setImage(cheese, for: .normal)
            
            question.text = "Never mind, it's too cheesy.."
            UIView.transition(with: pizza, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = false
            
        } else {
            let returnImage = UIImage(named: "pizza")
            self.pizza.setImage(returnImage, for: .normal)
            question.text = "Want to hear a pizza joke?"
            UIView.transition(with: pizza, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = true
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 236/255, green: 184/255, blue: 162/255, alpha: 1)
    }


}

