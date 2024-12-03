//
//  ItemTableViewController.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class RiceMealTableViewController: UITableViewController{
    
    var items:[Item] = [
        Item(name: "Original", desc: "Two (2) pcs boneless chicken with rice", price: 95.0, imageFile: "rm1"),
        Item(name: "Garlic", desc: "Two (2) pcs boneless chicken with rice", price: 100.0, imageFile: "rm1"),
        Item(name: "Jack Daniels", desc: "Two (2) pcs boneless chicken with rice", price: 100.0, imageFile: "rm1"),
        Item(name: "Yangyeom", desc: "Two (2) pcs boneless chicken with rice", price: 100.0, imageFile: "rm1"),
        Item(name: "Spicy BBQ", desc: "Two (2) pcs boneless chicken with rice", price: 100.0, imageFile: "rm1"),
        Item(name: "24 Cheddar", desc: "Two (2) pcs boneless chicken with rice", price: 105.0, imageFile: "rm1"),
        Item(name: "Snow Cheese", desc: "Two (2) pcs boneless chicken with rice", price: 105.0, imageFile: "rm1"),
        Item(name: "Dark Truffle", desc: "Two (2) pcs boneless chicken with rice", price: 105.0, imageFile: "rm1")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "RiceMeal", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! RiceMealViewController
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

