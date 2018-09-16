//
//  PopupViewController.swift
//  com.randomName
//
//  Created by Julian Pardo on 16/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.headerView.layer.borderWidth = 0.5
        self.contentView.layer.borderWidth = 0.5
        self.goButton.layer.cornerRadius = self.goButton.frame.height / 2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goButtonPressed(_ sender: Any) {
        self.dismiss(animated: true) {
            if let controller = self.storyboard?.instantiateViewController(withIdentifier: "secondPassword") {
                PresentationService.controller?.present(controller, animated: true, completion: nil)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
