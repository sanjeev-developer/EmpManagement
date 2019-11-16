//
//  FirstViewController.swift
//  AgeCalculator
//
//  Created by sanjeev gupta on 2019-10-29.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var but_coustmet: UIButton!
    @IBOutlet var but_admin: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
  
      
        self.but_coustmet.layer.cornerRadius = 10
                 self.but_coustmet.clipsToBounds = true
        
        self.but_admin.layer.cornerRadius = 10
                 self.but_admin.clipsToBounds = true


        // Do any additional setup after loading the view.
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
