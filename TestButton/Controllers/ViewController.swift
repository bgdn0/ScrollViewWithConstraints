//
//  ViewController.swift
//  TestButton
//
//  Created by Administrator on 19.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: ExtendableButton!
    @IBOutlet weak var button2: ExtendableButton!
    @IBOutlet weak var button3: ExtendableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.titleLabel.text = "Title Button 1"
        button1.subtitleLabel.text = "SubTitle Button 1"
        button1.leftOffset = 0
        button1.rightOffset = 0
        
        button2.titleLabel.text = "Title Button 2"
        button2.subtitleLabel.text = "Very Long SubTitle for Button 2 in two lines"
        
        button3.titleLabel.text = "Very Long Title for Button 3 split in two lines"
        button3.subtitleLabel.text = "SubTitle Button 3"
        button3.titleLeftOffset = 20
        button3.disclosureImage = nil
    }


}

