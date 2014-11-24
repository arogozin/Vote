//
//  VoteCandidate2ViewController.swift
//  Voting
//
//  Created by kosta on 11/23/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit
import Social


class VoteCandidate2ViewController: UIViewController {
    
    
    var secondCandidateNameStr: String = ""
    
    
    @IBOutlet var candidateSideUILabel: UILabel!
    @IBOutlet var candidateUIImageView: UIImageView!
    @IBOutlet var candidateNameUILabel: UILabel!
    @IBOutlet var candidateLocationUILabel: UILabel!
    @IBOutlet var candidateVoteUIButton: UIButton!
    @IBAction func candidateFBShareUIButton(sender: UIButton) {
        
        if (SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)) {
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("Presidential Election! :D")
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        }
            
        else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        candidateNameUILabel.text! = secondCandidateNameStr
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
