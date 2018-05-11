//
//  LoginViewController.swift
//  Dealer
//
//  Created by Dipankar Ghosh on 5/11/18.
//  Copyright © 2018 Dipankar Ghosh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var UserText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
  
    @IBOutlet weak var Display: UITextField!
   
    @IBAction func Create(_ sender: Any) {
        
    }
    
    @IBAction func Login(_ sender: Any) {
        //To create account we write code here..
       let username = UserText.text //username is being taken in.
       let password = PasswordText.text //password is being taken in.
        
        if(username == "" || password == "")
        {
            return
        }
        login(username!, _psw: password!)
        
    }
    func login(_ user:String, _psw:String)
    {
       //To login write code here...
        if((UserText.text?.contains("Dipankar"))! && (PasswordText.text?.contains("123"))!)
        {
            NSLog("Logged in")
            Display.text = "Logged In"
        }
        else
        {
            NSLog("Login Failed")
            Display.text = "Not Logged In"
        }
    }
    @IBAction func Return(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.darkGray

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
