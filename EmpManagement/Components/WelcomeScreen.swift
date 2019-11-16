//
//  FirstViewController.swift
//  AgeCalculator
//
//  Created by sanjeev gupta on 2019-10-29.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit


    
    @IBAction func but_admin(_ sender: Any)
    {
           let obj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
         obj.decison = 0
                                     self.navigationController?.pushViewController(obj, animated: true)
    }
    
 
    @IBAction func but_coustmer(_ sender: Any) {
        
         let obj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        obj.decison = 1
                                            self.navigationController?.pushViewController(obj, animated: true)
    }
    
    func getPlist(withName name: String) -> [String]?
    {
        if  let path = Bundle.main.path(forResource: name, ofType: "pDatabase"),
            let xml = FileManager.default.contents(atPath: path)
        {
            return (try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil)) as? [String]
        }

        return nil
    }
}
