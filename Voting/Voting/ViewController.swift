//
//  ViewController.swift
//  Voting
//
//  Created by Aleksandr Rogozin on 11/18/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var firstNameUITextField: UITextField!
    @IBOutlet var lastNameUITextField: UITextField!
    @IBOutlet var ssnUITextField: UITextField!
    @IBOutlet var ageUISwitch: UISwitch!
    @IBOutlet var proceedToVoteUIButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

