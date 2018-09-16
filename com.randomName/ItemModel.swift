//
//  ItemModel.swift
//  com.randomName
//
//  Created by Julian Pardo on 16/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import Foundation
import UIKit

public class ItemModel {
    var image : UIImage
    var title : String
    var subtitle : String
    
    init(image : String, title : String, subtitle : String) {
        //self.image = UIImage(named: image, in: nil, compatibleWith: nil) ?? UIImage()
        self.image = UIImage.init(named: image) ?? UIImage()
        self.title = title
        self.subtitle = subtitle
    }
}
