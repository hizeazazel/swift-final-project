//
//  Item.swift
//  swift-final-project
//
//  Created by AIZELNOV SANTIAGO on 12/2/24.
//

import UIKit

class Item: NSObject{
    var name: String
    var desc: String
    var price: Double
    var imageFile: String
    
    init(name: String, desc: String, price: Double, imageFile: String){
        self.name = name
        self.desc = desc
        self.price = price
        self.imageFile = imageFile
    }
}
