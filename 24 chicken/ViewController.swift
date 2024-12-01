//
//  ViewController.swift
//  24 chicken
//
//  Created by AIZELNOV SANTIAGO on 12/1/24.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var priceLabel: UILabel!

    let chickenOptions = ["Half Chicken", "Whole Chicken"]
    let flavorOptions = ["Original", "Garlic", "Yangyeom", "Spicy BBQ", "24 Cheddar", "Lemon Glazed", "Snow Cheese", "Dark Truffle"]

    let prices: [String: [String: Double]] = [
        "Half Chicken": [
            "Original": 250.0,
            "Garlic": 255.0,
            "Jack Daniels": 255.0,
            "Yangyeom": 255.0,
            "Spicy BBQ": 255.0,
            "24 Cheddar": 260.0,
            "Lemon Glaze":260.0,
            "Snow Cheese": 260.0,
            "Dark Truffle": 260.0
        ],
        "Whole Chicken": [
            "Original": 485.0,
            "Garlic": 495.0,
            "Jack Daniels": 495.0,
            "Yangyeom": 495.0,
            "Spicy BBQ": 495.0,
            "24 Cheddar": 515.0,
            "Lemon Glaze":520.0,
            "Snow Cheese": 515.0,
            "Dark Truffle": 515.0
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

//        pickerView.delegate = self
//        pickerView.dataSource = self

        //updatePrice()
    }
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 2
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == 0 {
//            return chickenOptions.count
//        } else {
//            return flavorOptions.count
//        }
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0 {
//            return chickenOptions[row]
//        } else {
//            return flavorOptions[row]
//        }
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        updatePrice()
//    }
//
//    func updatePrice() {
//        let selectedChicken = chickenOptions[pickerView.selectedRow(inComponent: 0)]
//        let selectedFlavor = flavorOptions[pickerView.selectedRow(inComponent: 1)]
//
//        // Retrieve the price from the dictionary
//        if let flavorPrices = prices[selectedChicken],
//           let price = flavorPrices[selectedFlavor] {
//            priceLabel.text = String(format: "$%.2f", price)
//        } else {
//            priceLabel.text = "Price not available"
//        }
//
//        print("Selected: \(selectedChicken) with \(selectedFlavor)")
//    }
}
