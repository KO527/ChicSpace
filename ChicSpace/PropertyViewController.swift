//
//  ProductViewController.swift
//  ChicSpace
//
//  Created by Kwajo Osei-Akoto1 on 10/28/16.
//  Copyright © 2016 Kwajo Osei-Akoto1. All rights reserved.
//

import UIKit

class PropertyViewController: UIViewController {

    
    @IBOutlet weak var propertyImageView: UIImageView!
    @IBOutlet weak var propertyNameLabel: UILabel!
   
    
    var property: Property?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = property {
            propertyNameLabel.text = p.name
            if let i = p.propertyImage{
                propertyImageView.image = UIImage(named: i)
            }
        }
    }
    @IBAction func EnterPressed(_ sender: AnyObject) -> Void {
    print("button tapped")
    }
}
