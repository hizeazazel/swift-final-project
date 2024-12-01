//
//  ItemTableViewController.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class ItemTableViewController: UITableViewController{
    
    var items:[Item] = [
        Item(name: "Yangnyeom", desc: "Extra Sauce", price: 45.0, imageFile: "yangnyeom"),
        Item(name: "Jack Daniels", desc: "Extra Sauce", price: 45.0, imageFile: "jack daniels"),
        Item(name: "Spicy BBQ", desc: "Extra Sauce", price: 45.0, imageFile: "spicy bbq"),
        Item(name: "Lemon Glaze", desc: "Extra Sauce", price: 45.0, imageFile: "lemon glaze"),
        Item(name: "Truffle Mayo", desc: "Extra Sauce", price: 45.0, imageFile: "truffle mayo"),
        Item(name: "Honey Mustard ", desc: "Extra Sauce", price: 45.0, imageFile: "honey mustard")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemID", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! ItemViewController
        if let indexPath = self.tableView.indexPathForSelectedRow{
            
            let item = items[indexPath.row]
            //            print(indexPath.row, item.name, item.desc, item.price)
            vc.sendItem = item
        }
    }
}
