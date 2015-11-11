//
//  ViewController.swift
//  Famm
//
//  Created by Kazuya Ueoka on 2015/11/11.
//  Copyright © 2015年 TImers Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnLogin :UIButton?
    @IBOutlet var emailField :UITextField?
    @IBOutlet var passwordFIeld :UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.colorWithCSS(FAMM_THEME_COLOR)
        
        btnLogin?.addTarget(self, action: "tappedLoginBtn:", forControlEvents: UIControlEvents.PrimaryActionTriggered)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tappedLoginBtn(sender: AnyObject?)
    {
        print("tappedLoginBtn")
        
        let homeViewController :HomeViewController? = self.storyboard?.instantiateViewControllerWithIdentifier("homeViewController") as? HomeViewController
        homeViewController?.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        if (homeViewController == nil)
        {
            return;
        }
        self.presentViewController(homeViewController!, animated: true) { () -> Void in
            
        }
    }
}

