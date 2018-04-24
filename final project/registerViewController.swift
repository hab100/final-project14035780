//
//  registerViewController.swift
//  final project
//
//  Created by HAB on 19/04/2018.
//  Copyright © 2018 HAB. All rights reserved.
//

import UIKit

class registerViewController: UIViewController {

    @IBOutlet weak var UserEmailTextfield: UITextField!
    @IBOutlet weak var userPasswordTextfield: UITextField!
    @IBOutlet weak var repeatPasswordTextfield: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = UserEmailTextfield.text;
        let userPassword = userPasswordTextfield.text;
        let userRepeatPassword = repeatPasswordTextfield.text;
        
        
        // check for empty fields
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!)
        {
            
            // Display alert message
            displayMyAlertMessage(userMessage: "All fields are required");
            
            return;
        }
        if(userPassword != userRepeatPassword)
        {
            // Display an alert message
            displayMyAlertMessage(userMessage: "Passwords do not match");
            return;
        }
        //store data
        let defaults = UserDefaults.standard
        
        UserDefaults.standard.set(userEmail, forKey:"userEmail");
        UserDefaults.standard.set(userPassword, forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
        
        print("saved")
        
        // Display alert message with confirmation.
        let myAlert = UIAlertController(title:"Alert", message:"Registration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion:nil);
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
        
        
        func viewWillAppear(animated: Bool){
        self.performSegue(withIdentifier: "back", sender: self)
    }
}

}
