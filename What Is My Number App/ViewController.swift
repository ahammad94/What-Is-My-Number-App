//
//  ViewController.swift
//  What Is My Number App
//
//  Created by Abdelrahman Hammad on 4/17/17.
//  Copyright © 2017 Abdelrahman Hammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let numObject = UserDefaults.standard.object(forKey: "number")
        if let num = numObject as? String {
            numLabel.text = num
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveNumberClicked(_ sender: Any) {
        
        if let num = inputField.text {
            UserDefaults.standard.set(num, forKey:"number")
            numLabel.text = num
        }
        
        
    }


}

