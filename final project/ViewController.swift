//
//  ViewController.swift
//  final project
//
//  Created by HAB on 19/04/2018.
//  Copyright © 2018 HAB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userEmailTextfield: UITextField!
    @IBOutlet weak var userPasswordTextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextfield.text;
        let userPassword = userPasswordTextfield.text;
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        
        
        if(userEmailStored == userEmail){
            if(userPasswordStored == userPassword){
                
                // Login is successfull
                UserDefaults.standard.set(true,forKey:"isUserLoggedIn");
                UserDefaults.standard.synchronize();
                
                self.dismiss(animated: true, completion:nil);
                let myAlert = UIAlertController(title:"Alert", message:"login is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
                
                let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default){ action in
                    self.dismiss(animated: true, completion:nil);
                }
                
                myAlert.addAction(okAction);
                self.present(myAlert, animated:true, completion:nil);
                
                
                func viewWillAppear(animated: Bool){
                    self.performSegue(withIdentifier: "login", sender: self)
                    
            }
            func displayMyAlertMessage(userMessage:String){
                let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
                
                let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default, handler:nil);
                
                myAlert.addAction(okAction);
                
                self.present(myAlert, animated:true, completion:nil);
                

}
        
}
}

}
}
