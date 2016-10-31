//
//  ProductViewController.swift
//  ChicSpace
//
//  Created by Kwajo Osei-Akoto1 on 10/28/16.
//  Copyright © 2016 Kwajo Osei-Akoto1. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = "Chic Space"
        productImageView.image = UIImage(named: "chic workplace")
        
    }
    @IBAction func EnterPressed(_ sender: AnyObject) -> Void {
    print("button tapped")
    }
    

}
