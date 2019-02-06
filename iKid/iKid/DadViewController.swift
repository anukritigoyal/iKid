//
//  DadViewController.swift
//  iKid
//
//  Created by Anukriti Goyal on 5/2/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var haircut1: UIButton!
    @IBOutlet weak var question: UILabel!
    var pressed = true
    
    @IBAction func seeAnswer(_ sender: Any) {
        if pressed {
            let newHair = UIImage(named: "haircut2")
            haircut1.setImage(newHair, for: .normal)
            
            question.text = "No, I got them all cut"
            UIView.transition(with: haircut1, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = false
        } else {
            let returnImage = UIImage(named: "haircut1")
            self.haircut1.setImage(returnImage, for: .normal)
            question.text = "Dad, did you get a haircut?"
            UIView.transition(with: haircut1, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: question, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            pressed = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 239/255, green: 210/255, blue: 173/255, alpha: 1)
    }
    
    
}


