//
//  ViewController.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class ViewController: UIViewController {

    var cart: [String] = []
    
    @IBAction func btnAddRM(_ sender: UIButton) {
        addItemToCart(item: "Rice Meal")
    }

    @IBAction func btnAddGM(_ sender: UIButton) {
        addItemToCart(item: "Group Meal")
    }

    @IBAction func btnAddSD(_ sender: UIButton) {
        addItemToCart(item: "Side Dish")
    }

    @IBAction func btnAddXS(_ sender: UIButton) {
        addItemToCart(item: "Extra Sauce")
    }

    
    func addItemToCart(item: String) {
        cart.append(item)
        print("Added \(item) to the cart.")
        print("Current Cart: \(cart)")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

