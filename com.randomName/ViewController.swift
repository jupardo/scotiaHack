//
//  ViewController.swift
//  com.randomName
//
//  Created by Julian Pardo on 15/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import PopupDialog
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var recommendLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PresentationService.controller = self
        // Do any additional setup after loading the view, typically from a nib.
        
        print(self.view.frame.height)
        let frame = CGRect(x: 0, y: self.view.frame.height * 0.46, width: self.view.frame.width, height: 6)
        
        let backgroundView = UIView(frame: frame)
        self.view.addSubview(backgroundView)
        
        //A linear Gradient Consists of two colours: top colour and bottom colour
        let topColor = UIColor.clear
        let bottomColor = UIColor.black
        
        //Add the top and bottom colours to an array and setup the location of those two.
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [CGFloat] = [0.0, 2.0]
        
        //Create a Gradient CA layer
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]?
        gradientLayer.frame = frame
        gradientLayer.opacity = 0.2
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
        backgroundView.layer.zPosition = -100
        //print((pointsLabel.frame.maxY + 84))
        let bottomBorderUser = UIView(frame: CGRect(origin: CGPoint(x: 16, y: pointsLabel.frame.maxY + 20), size: CGSize(width: view.frame.width - 32, height: 1)))
        bottomBorderUser.backgroundColor = UIColor(red: 112/255, green: 112/255, blue: 112/255, alpha: 1)
        self.scrollView.addSubview(bottomBorderUser)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openScanner(_ sender: Any) {
        if let scanner = storyboard?.instantiateViewController(withIdentifier: "scannerController") {
            self.present(scanner, animated: true, completion: nil)
        }
    }
    
}

