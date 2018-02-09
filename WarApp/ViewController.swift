//
//  ViewController.swift
//  WarApp
//
//  Created by Hendra on 2/8/18.
//  Copyright © 2018 Hendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var righScoreLabel: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        if(leftRandomNumber > rightRandomNumber){
            leftScore += 1
        }else if(rightRandomNumber > leftRandomNumber){
            rightScore += 1
        }
        
        leftScoreLabel.text = String(leftScore)
        
        righScoreLabel.text = String(rightScore)
        
        print("left random number is: \(leftRandomNumber)")
        print("right random number is: \(rightRandomNumber)")
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
    }
    
}

