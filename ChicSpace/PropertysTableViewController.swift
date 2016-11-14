//
//  ProductsTableViewController.swift
//  ChicSpace
//
//  Created by Kwajo Osei-Akoto1 on 11/12/16.
//  Copyright © 2016 Kwajo Osei-Akoto1. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var properties: [Property]?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let property1 = Property()
        let property2 = Property()
        let property3 = Property()
        let property4 = Property()
        
        property1.name = "Santa Barbara, CA"
        property1.propertyImage = "DreamLivingRoom3"
        property1.cellImage = "image-cell1"
        
        property2.name = "Demarest, NJ"
        property2.propertyImage = "DreamLivingRoom1"
        property3.cellImage = "image-cell2"
        
        property3.name = "Fort Worth, Texas"
        property3.propertyImage = "DreamLivingRoom2"
        property3.cellImage = "image-cell3"
        
        property4.name = "Manhattan, NY"
        property4.propertyImage = "CoolApartmentBedroom"
        property4.cellImage = "image-cell4"
        
        properties = [property1, property2, property3, property4]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let p = properties {
         return p.count
        }
        return 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if segue.identifier == "ShowProduct" {
                let propertyVC = segue.destination as? PropertyViewController

                guard let cell = sender as? UITableViewCell,
                    let indexPath = tableView.indexPath(for: cell) else{
                        return
                    }
                propertyVC?.property = properties?[indexPath.row]
            }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let property = properties?[indexPath.row]
        
        if let p = property {
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        return cell
    }
}
