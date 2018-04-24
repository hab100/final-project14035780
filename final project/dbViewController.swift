//
//  dbViewController.swift
//  final project
//
//  Created by HAB on 19/04/2018.
//  Copyright © 2018 HAB. All rights reserved.
//

import UIKit
import SQLite3

class dbViewController: UIViewController {

    
    @IBOutlet weak var ItemnameTextField: UITextField!
    
    @IBOutlet weak var ItemquantityTextField: UITextField!
    
    @IBOutlet weak var PriceTextField: UITextField!
    
    @IBOutlet weak var DescriptionTextField: UITextField!
    
    @IBOutlet weak var UnitTextField: UITextField!
    
    @IBOutlet weak var ContactTextField: UITextField!
    
 
    
    
    
    
    @IBAction func ADD(_ sender: Any) {
    
        let Itemname = ItemnameTextField.text;
        let Itemquantity = ItemquantityTextField.text;
        let Price = PriceTextField.text;
        let Description = DescriptionTextField.text;
        let Unit = UnitTextField.text;
        let Contact = ContactTextField.text;
        
   
        // Check for empty fields
        if((Itemname?.isEmpty)! || (Itemquantity?.isEmpty)! || (Price?.isEmpty)! || (Description?.isEmpty)! || (Unit?.isEmpty)! || (Contact?.isEmpty)!)
        {
            
            // Display alert message
            
            displayMyAlertMessage(userMessage: "All fields are required");
            
    
        }
        //store data
        let defaults = UserDefaults.standard
        
        UserDefaults.standard.set(Itemname, forKey:"Itemname");
        UserDefaults.standard.set(Itemquantity, forKey:"Itemquantity");
        UserDefaults.standard.set(Price, forKey:"Price");
        UserDefaults.standard.set(Description, forKey:"Description");
        UserDefaults.standard.set(Unit, forKey:"Unit");
        UserDefaults.standard.set(Contact, forKey:"Contact");
        UserDefaults.standard.synchronize();
        
        
        print("saved")
        
        // Display alert message with confirmation.
        let myAlert = UIAlertController(title:"Alert", message:"ADD is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);
        
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
        
       
    
    }

        
    @IBAction func DELETE(_ sender: Any) {
    
     
    }
    
        
        

    @IBAction func VIEW(_ sender: Any) {
    }
    
        
        
        
        
        
        
        

        
        
        

      
    

}

