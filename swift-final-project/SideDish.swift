//
//  SideDish.swift
//  swift-final-project
//
//  Created by Joseph Escalante on 12/3/24.
//

import UIKit

class SideDish: NSObject {
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
