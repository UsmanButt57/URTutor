//
//  SignInViewController.swift
//  URTutor
//
//  Created by Usman on 9/19/17.
//  Copyright © 2017 Usman. All rights reserved.
//

import UIKit

class studentSignInViewController: UIViewController {

        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Student SignIn"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func studentSignUp(_ sender: Any) {
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "studentSignUpViewController") as! studentSignUpViewController
        navigationController?.pushViewController(vc,animated: true)
        
    }
    
    @IBAction func studentSignIn(_ sender: Any) {
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "studentHomeViewController") as! studentHomeViewController
        navigationController?.pushViewController(vc,animated: true)

        
    }
   
    @IBAction func studentForgetPassword(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "Forget Password", message: "send mail on your email address successfully", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    

}
