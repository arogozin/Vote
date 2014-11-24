//
//  VoteScoreViewController.swift
//  Voting
//
//  Created by Kosta on 11/19/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit

class VoteScoreViewController: UIViewController {
    
    
    var firstNameStr: String = ""
    var lastNameStr: String = ""
    var ssnStr: String = ""
    
    let candidate1Key = "BFFA59EhUG"
    let candidate2Key = "HOBg0u6UEv"
    
    
    @IBOutlet var titleUILable: UILabel!
    @IBOutlet var yearUILabel: UILabel!
    @IBOutlet var hashUILabel: UILabel!
    
    
    @IBOutlet var firstCandidateUIImageView: UIImageView!
    @IBOutlet var firstCandidateNameUILabel: UILabel!
    @IBOutlet var firstCandidateProfileUIButton: UIButton!
    @IBOutlet var firstCandidateScoreUILabel: UILabel!
    
    
    @IBOutlet var secondCandidateUIImageView: UIImageView!
    @IBOutlet var secondCandidateNameUILabel: UILabel!
    @IBOutlet var secondCandidateProfileUIButton: UIButton!
    @IBOutlet var secondCandidateScoreUILabel: UILabel!
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toVoteCandidate1Segue" {
            let voteCandidate1_vc = segue.destinationViewController as VoteCandidate1ViewController
            
            voteCandidate1_vc.firstCandidateNameStr = firstCandidateNameUILabel.text!
            
            
            
            var candidate1Query = PFQuery(className: "Candidate")
            candidate1Query.getObjectInBackgroundWithId(candidate1Key) {
                (test: PFObject!, error: NSError!) -> Void in
                
                if error == nil {
                    NSLog("%@", test)
                    var countFirstCandidateVotes: Int = 20351
                    countFirstCandidateVotes = test["votes"] as Int
                    countFirstCandidateVotes++
                    test["votes"] = countFirstCandidateVotes
                    test.save()
                }
            }
        }

        if segue.identifier == "toVoteCandidate2Segue" {
            let voteCandidate2_vc = segue.destinationViewController as VoteCandidate2ViewController
            
            voteCandidate2_vc.secondCandidateNameStr = secondCandidateNameUILabel.text!
            
            var countSecondCandidateVotes: Int = 20412
            
            var candidate2Query = PFQuery(className: "Candidate")
            candidate2Query.getObjectInBackgroundWithId(candidate2Key) {
                (test: PFObject!, error: NSError!) -> Void in
                
                if error == nil {
                    NSLog("%@", test)
                    var currentVotes = test["votes"] as Int
                    currentVotes++
                    test["votes"] = currentVotes
                    test.save()
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //secondCandidateScoreUILabel.text! = countSecondCandidateVotes
        
        var userDataObject: PFObject = PFObject(className: "UserData")
        
        userDataObject["firstName"] = firstNameStr
        userDataObject["lastName"] = lastNameStr
        userDataObject["ssn"] = ssnStr
        userDataObject["voted"] = "true"
        
        userDataObject.save()
        
        var candidate1Query = PFQuery(className: "Candidate")
        candidate1Query.getObjectInBackgroundWithId(candidate1Key) {
            (test: PFObject!, error: NSError!) -> Void in
            if error == nil {
                NSLog("%@", test)
                var currentVotes = test["votes"] as Int
                
                test.save()
                self.firstCandidateScoreUILabel.text! = "\(currentVotes)"
                
            } else {
                NSLog("%@", error)
            }
        }
        
        var candidate2Query = PFQuery(className: "Candidate")
        candidate2Query.getObjectInBackgroundWithId(candidate2Key) {
            (test: PFObject!, error: NSError!) -> Void in
            if error == nil {
                NSLog("%@", test)
                var currentVotes = test["votes"] as Int
                
                test.save()
                self.firstCandidateScoreUILabel.text! = "\(currentVotes)"
                
            } else {
                NSLog("%@", error)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
