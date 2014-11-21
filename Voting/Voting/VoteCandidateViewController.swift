//
//  VoteCandidateViewController.swift
//  Voting
//
//  Created by Kosta on 11/19/14.
//  Copyright (c) 2014 Aleksandr Rogozin. All rights reserved.
//

import UIKit

class VoteCandidateViewController: UIViewController {
    
    @IBOutlet var candidateSideUILabel: UILabel!
    @IBOutlet var candidateUIImageView: UIImageView!
    @IBOutlet var candidateNameUILabel: UILabel!
    @IBOutlet var candidateLocationUILabel: UILabel!
    @IBOutlet var candidateFBShareUIButton: UIButton!
    @IBOutlet var candidateVoteUIButton: UIButton!
    @IBOutlet var backToResultsUIButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
