//
//  ItemTableViewController.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class SideDishTableViewController: UITableViewController{
    
    var items:[Item] = [
        Item(name: "Cajun Fries", desc: "Perfectly seasoned and etxra crispy fries", price: 95.0, imageFile: "cajun fries"),
        Item(name: "Rice", desc: "Steamed Rice", price: 100.0, imageFile: "rice"),
        Item(name: "Kimchi Rice", desc: "Korean style fried rice topped with egg", price: 100.0, imageFile: "kimchi rice"),
        Item(name: "Caramelized Onions", desc: "Sweet and earthy golden brown onions", price: 100.0, imageFile: "caramelized onion"),
        Item(name: "Kimchi", desc: "Korean traditional fermented vegetable", price: 45.0, imageFile: "kimchi")
    ]
    
    override func viewDidLoad() {
    }
    override func didReceiveMemoryWarning() {
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideDish", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! SideDishViewController
        if let indexPath = self.tableView.indexPathForSelectedRow{
            
            let item = items[indexPath.row]
            //            print(indexPath.row, item.name, item.desc, item.price)
            vc.sendItem = item
        }
    }
}
//
//  RiceMealTableViewController.swift
//  swift-final-project
//
//  Created by Joseph Escalante on 12/3/24.
//

