//
//  VoteScoreViewController.swift
//  Voting
//
//  Created by Kosta on 11/19/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit

class VoteScoreViewController: UIViewController {
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
