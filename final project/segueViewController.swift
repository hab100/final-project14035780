//
//  segueViewController.swift
//  final project
//
//  Created by HAB on 23/04/2018.
//  Copyright © 2018 HAB. All rights reserved.
//

import UIKit

class segueViewController: UIViewController {

    @IBAction func HAVE(_ sender: Any) {
    }
    
    
    
    @IBAction func AP(_ sender: Any) {
        func viewWillAppear(animated: Bool){
            self.performSegue(withIdentifier: "AM", sender: self)
        }
    
    }
    
    @IBAction func AM(_ sender: Any) {
    }
    
    
    
    @IBAction func GI(_ sender: Any) {
    
        func viewWillAppear(animated: Bool){
            self.performSegue(withIdentifier: "AM", sender: self)
    
    
    }
    
    
    
    
        func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

        func didReceiveMemoryWarning() {
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
}
