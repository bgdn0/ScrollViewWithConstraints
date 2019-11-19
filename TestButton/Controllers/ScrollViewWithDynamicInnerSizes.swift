//
//  ScrollViewWithDynamicInnerSizes.swift
//  TestButton
//
//  Created by Administrator on 19.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ScrollViewWithDynamicInnerSizes: UIViewController {

    @IBOutlet weak var button1: ExtendableButton!
    @IBOutlet weak var button2: ExtendableButton!
    @IBOutlet weak var button3: ExtendableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button2.titleLabel.text = "Very Long Title for button 22222 some text"
        button2.subtitleLabel.text = "Very Long Subtitle for button 2222 with text here"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func button3Tapped(_ sender: Any) {
        let alert = UIAlertController(title: "Alert",
                                      message: "Button 3 Tapped",
                                      preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
    }
    
}
