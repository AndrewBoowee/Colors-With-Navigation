//
//  ColorsViewController.swift
//  Colors
//
//  Created by Andrew Bui on 9/28/18.
//  Copyright © 2018 Andrew Bui. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  //  var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var colors = [Color(name: "red", uiColor: UIColor.red),
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow", uiColor: UIColor.yellow),
                  Color(name: "green", uiColor: UIColor.green),
                  Color(name: "blue", uiColor: UIColor.blue),
                  Color(name: "purple", uiColor: UIColor.purple),
                  Color(name: "brown", uiColor: UIColor.brown),]
    
    @IBOutlet weak var colorstableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Colors"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
        cell.selectionStyle = .none
        
       return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorsDetailViewController,
            let row = colorstableview.indexPathForSelectedRow?.row{
            destination.color = colors[row]
        }
        
    }

}
