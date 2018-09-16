//
//  LoginViewController.swift
//  com.randomName
//
//  Created by Julian Pardo on 15/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bottomBorderUser = UIView(frame: CGRect(origin: CGPoint(x: 0, y: userTextField.frame.height), size: CGSize(width: userTextField.frame.width, height: 1)))
        bottomBorderUser.backgroundColor = UIColor(red: 237/255, green: 14/255, blue: 34/255, alpha: 1)
        userTextField.addSubview(bottomBorderUser)
        
        let bottomBorderPassword = UIView(frame: CGRect(origin: CGPoint(x: 0, y: userTextField.frame.height), size: CGSize(width: userTextField.frame.width, height: 1)))
        bottomBorderPassword.backgroundColor = UIColor(red: 237/255, green: 14/255, blue: 34/255, alpha: 1)
        passwordTextField.addSubview(bottomBorderPassword)
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
