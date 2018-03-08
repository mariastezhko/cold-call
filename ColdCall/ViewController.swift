//
//  ViewController.swift
//  ColdCall
//
//  Created by Maria Stezhko on 3/7/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    let names = ["Jay", "Bryant", "Jimmy", "Cody", "Ryota", "Ready?", "Uyanga", "Courtney"]
    
   
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        var rndNum = Int(arc4random_uniform(8))
        nameLabel.text = names[rndNum]
        var rndNum2 = Int(arc4random_uniform(4) + 1)
        nameLabel.text = names[rndNum]
        numLabel.text = String(rndNum2)
        if rndNum2 == 1 || rndNum2 == 2 {
            numLabel.textColor = UIColor.red
        }
        else if rndNum2 == 3 || rndNum2 == 4 {
            numLabel.textColor = UIColor.orange
        }
        else {
            numLabel.textColor = UIColor.green
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var rndNum = Int(arc4random_uniform(8))
        var rndNum2 = Int(arc4random_uniform(4) + 1)
        nameLabel.text = names[rndNum]
        numLabel.text = "3"
        numLabel.textColor = UIColor.orange
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

