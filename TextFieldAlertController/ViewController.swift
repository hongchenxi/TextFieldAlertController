//
//  ViewController.swift
//  TextFieldAlertController
//
//  Created by 洪晨希 on 16/1/4.
//  Copyright © 2016年 洪晨希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(sender: AnyObject) {
        
        var userNameTextField: UITextField?
        var pwdTextField: UITextField?
        
        let alertController = UIAlertController(title: "登陆", message: "请输入您的用户名和密码", preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "登陆", style: .Default) { (action) -> Void in
            if let username = userNameTextField?.text {
                print("用户名：\(username)");
            }else{
                print("no username");
            }
            
            if let pwd = pwdTextField?.text {
                print("密码：\(pwd)")
            }else{
                print("no pwd")
            }
        }
        
        alertController.addTextFieldWithConfigurationHandler { (textUserName) -> Void in
            userNameTextField = textUserName
            userNameTextField!.placeholder = "您的用户名";
        }
        alertController.addTextFieldWithConfigurationHandler { (textPwd) -> Void in
            pwdTextField = textPwd
            pwdTextField!.secureTextEntry = true
            pwdTextField!.placeholder = "您的密码"
        }
        
        alertController.addAction(alertAction)
        self.presentViewController(alertController, animated: true, completion: nil)
  
    }
    

}

