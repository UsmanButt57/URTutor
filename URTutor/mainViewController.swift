//
//  mainViewController.swift
//  URTutor
//
//  Created by Usman on 9/18/17.
//  Copyright © 2017 Usman. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    /*
     
     change the tab bar controller bar color
     
     tabBarController?.tabBar.barTintColor = UIColor.brown
     tabBarController?.tabBar.tintColor = UIColor.yellow
     
     */

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.barTintColor = UIColor(r: 73, g: 255, b: 133)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orange]

        
        
    }
    @IBAction func signInStudent(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "studentSignInViewController") as! studentSignInViewController
        navigationController?.pushViewController(vc,animated: true)
    }

    
    @IBAction func signInTutor(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "tutorSignInViewController") as! tutorSignInViewController
        navigationController?.pushViewController(vc,animated: true)
    }
    
    @IBAction func signInInstitute(_ sender: Any){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "instituteSignInViewController") as! instituteSignInViewController
        navigationController?.pushViewController(vc,animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}


extension UIColor{
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }

}


