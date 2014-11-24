//
//  ViewController.swift
//  Voting
//
//  Created by Aleksandr Rogozin on 11/18/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var titleUILabel: UILabel!
    @IBOutlet var yearUILabel: UILabel!
    @IBOutlet var firstNameUITextField: UITextField!
    @IBOutlet var lastNameUITextField: UITextField!
    @IBOutlet var ssnUITextField: UITextField!
    @IBOutlet var ageUISwitch: UISwitch!
    @IBOutlet var proceedToVoteUIButton: UIButton!
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toVoteScoreSegue" {
            let voteScore_vc = segue.destinationViewController as VoteScoreViewController
            
            voteScore_vc.firstNameStr = firstNameUITextField.text!
            voteScore_vc.lastNameStr = lastNameUITextField.text!
            voteScore_vc.ssnStr = ssnUITextField.text!
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

