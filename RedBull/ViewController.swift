//
//  ViewController.swift
//  RedBull
//
//  Created by Jingyu Cai on 11/27/18.
//  Copyright © 2018 Jingyu Cai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var brightnessBtn: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIScreen.main.brightness = CGFloat(0)
    }

    @IBAction func changeBrightness(_ sender: UIButton) {
        if counter == 0 {
            counter = 1
            UIScreen.main.brightness = CGFloat(1)
            self.view.backgroundColor = UIColor(red: 0, green: 221, blue: 255, alpha: 1)
        } else if counter == 1{
            counter = 2
            UIScreen.main.brightness = CGFloat(0.5)
            self.view.backgroundColor = UIColor.green
        } else if counter == 2 {
            counter = 3
            UIScreen.main.brightness = CGFloat(0.5)
            self.view.backgroundColor = UIColor.yellow
        } else if counter == 3 {
            counter = 0
            UIScreen.main.brightness = CGFloat(0)
            self.view.backgroundColor = UIColor.white
        }
    }
    
}

