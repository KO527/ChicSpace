//
//  ContactViewController.swift
//  ChicSpace
//
//  Created by Kwajo Osei-Akoto1 on 11/2/16.
//  Copyright © 2016 Kwajo Osei-Akoto1. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        // Do any additional setup after the view
    }
    
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }

}
