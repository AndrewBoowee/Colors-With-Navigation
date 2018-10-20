//
//  ColorsDetailViewController.swift
//  Colors
//
//  Created by Andrew Bui on 10/19/18.
//  Copyright © 2018 Andrew Bui. All rights reserved.
//

import UIKit

class ColorsDetailViewController: UIViewController {

    var color: Color?

    @IBOutlet weak var colornamelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colornamelabel.text = color?.name
        self.view.backgroundColor = color?.uiColor
        self.title = color?.name
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
