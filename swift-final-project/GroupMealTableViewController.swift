//
//  ItemTableViewController.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class GroupMealTableViewController: UITableViewController{
    
    var items:[Item] = [
        Item(name: "Original", desc: "Seven (7) pcs boneless chicken", price: 250.0, imageFile: "half chicken boneless"),
        Item(name: "Garlic", desc: "Seven (7) pcs boneless chicken", price: 255.0, imageFile: "half chicken boneless"),
        Item(name: "Jack Daniels", desc: "Seven (7) pcs boneless chicken", price: 255.0, imageFile: "half chicken boneless"),
        Item(name: "Yangyeom", desc: "Seven (7) pcs boneless chicken", price: 255.0, imageFile: "half chicken boneless"),
        Item(name: "Spicy BBQ", desc: "Seven (7) pcs boneless chicken", price: 255.0, imageFile: "half chicken boneless"),
        Item(name: "24 Cheddar", desc: "Seven (7) pcs boneless chicken", price: 260.0, imageFile: "half chicken boneless"),
        Item(name: "Snow Cheese", desc: "Seven (7) pcs boneless chicken", price: 260.0, imageFile: "half chicken boneless"),
        Item(name: "Dark Truffle", desc: "Seven (7) pcs boneless chicken", price: 260.0, imageFile: "half chicken boneless")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupMeal", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! GroupMealViewController
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

