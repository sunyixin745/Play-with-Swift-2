//
//  ViewController.swift
//  Enum Practice
//
//  Created by Liu Yubo on 8/5/16.
//  Copyright © 2016 Liu Yubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button: UIButton = UIButton(type: .InfoDark)
        button.center = view.center
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.buttonClick), forControlEvents: .TouchUpInside)
    }
    
    func buttonClick(){
        
        let alertController = UIAlertController(title: "Hello", message: "This is my first app:)", preferredStyle: .ActionSheet)
        
        let okAction = UIAlertAction(title: "OK", style: .Default){
            (UIAlertAction) in
                print("ok")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel){
            (UIAlertAction) in
                print("cancel")
        }
        let destroyAction = UIAlertAction(title: "Destroy", style: .Destructive){
            (UIAlertAction) in
                print("destroy")
        }
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        alertController.addAction(destroyAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

