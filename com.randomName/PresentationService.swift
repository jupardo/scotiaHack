//
//  PresentationController.swift
//  com.randomName
//
//  Created by Julian Pardo on 16/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import Foundation
import UIKit

class PresentationService {
    static var controller : UIViewController?
    static func assignController(controller : UIViewController) {
        self.controller = controller
    }
}
