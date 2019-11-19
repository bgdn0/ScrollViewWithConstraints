//
//  ScrollViewWithLabelViewController.swift
//  TestButton
//
//  Created by Administrator on 19.11.2019.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ScrollViewWithLabelViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func buttonAction(_ sender: Any) {
        label.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nibh ac arcu suscipit rhoncus at ac mi. Nullam sed erat vitae sem mollis lacinia. Sed at velit vel est finibus blandit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque at luctus orci. Proin aliquet dui id neque ullamcorper placerat. Etiam eu ultricies metus. Vestibulum accumsan porta quam non fermentum.

        Quisque scelerisque at felis id condimentum. Suspendisse at egestas massa. Nulla cursus ex sed metus eleifend, eu commodo enim posuere. Duis elementum velit et suscipit sodales. Duis orci lorem, vehicula sit amet vulputate at, commodo ac nulla. Sed convallis mattis justo, sed lobortis risus sollicitudin nec. Phasellus fermentum, nibh ac fermentum facilisis, massa turpis venenatis libero, ut pharetra ipsum diam in lacus.

        Cras eget mi ut odio semper ornare. Aenean vel sodales turpis, ac ullamcorper felis. In sagittis porta luctus. Donec mattis eu augue et sodales. Praesent luctus posuere arcu. Nulla rutrum est et massa vulputate, non finibus velit consectetur. Suspendisse sed mollis magna. Aenean eget mi et ex iaculis vulputate eget semper nulla. Quisque sit amet tincidunt sem. Nam ut viverra diam, venenatis malesuada orci. Integer dapibus, purus et fermentum eleifend, diam eros tempor purus, sed sodales sapien ante ac ligula. Vestibulum pulvinar scelerisque ultrices. Pellentesque eleifend tempus rutrum.

        Curabitur vel ex convallis, tempor nunc ac, rhoncus metus. Morbi at volutpat nunc. Proin nec turpis est. Nam venenatis mauris ac mi ullamcorper aliquam. Aliquam erat volutpat. Morbi non ex sit amet enim eleifend tempus vehicula non dolor. Donec ac nibh volutpat, imperdiet sem in, vehicula mi. In hac habitasse platea dictumst.

        Nulla facilisi. Quisque aliquam sagittis odio, et tincidunt ante mollis at. Duis pulvinar ultricies suscipit. Nullam et magna iaculis, posuere elit non, tincidunt mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer in ipsum mollis mi tincidunt gravida. Nullam laoreet mi sem, sed pellentesque lacus interdum non. Vestibulum suscipit lobortis massa ac sollicitudin. Vivamus ullamcorper nec ex eu varius. Mauris dictum eget mauris et sagittis.
        """
    }
    
}
