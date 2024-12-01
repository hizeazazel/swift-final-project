//
//  ItemTableViewController.swift
//  24 chicken
//
//  Created by Joseph Escalante on 12/1/24.
//

import UIKit

class ItemTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var items: [Item] = [
        Item(name: "Jack Daniels", desc: "Extra Sauce", price: 45.0, imageFile: "jack daniels"),
        Item(name: "Yangyeom", desc: "Extra Sauce", price: 45.0, imageFile: "yangyeom"),
        Item(name: "Spicy BBQ", desc: "Extra Sauce", price: 45.0, imageFile: "spicy bbq"),
        Item(name: "Lemon Glaze", desc: "Extra Sauce", price: 45.0, imageFile: "lemon glaze"),
        Item(name: "Truffle Mayo", desc: "Extra Sauce", price: 45.0, imageFile: "truffle mayo"),
        Item(name: "Honey Mustard ", desc: "Extra Sauce", price: 45.0, imageFile: "honey mustard")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemID", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        return cell
    }
}
