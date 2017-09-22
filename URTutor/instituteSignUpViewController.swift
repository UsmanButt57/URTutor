//
//  instituteSignUpViewController.swift
//  URTutor
//
//  Created by Usman on 9/19/17.
//  Copyright © 2017 Usman. All rights reserved.
//

import UIKit

class instituteSignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Institute SignUp"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func instituteSignUp(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "instituteHomeViewController") as! instituteHomeViewController
        navigationController?.pushViewController(vc,animated: true)
        
    }

}
