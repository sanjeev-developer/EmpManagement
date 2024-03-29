//
//  HomeViewController.swift
//  AgeCalculator
//
//  Created by sanjeev gupta on 2019-10-29.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{
    @IBOutlet var view_deletecoustmer: UIView!
    @IBOutlet var view_coustmers: UIView!
    @IBOutlet var view_addbills: UIView!
    @IBOutlet var view_add_vehicle: UIView!
    @IBOutlet var view_aboutus: UIView!
    @IBOutlet var view_contactus: UIView!
    var array: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let viewgesture = UITapGestureRecognizer()
        viewgesture.numberOfTapsRequired = 1
        viewgesture.addTarget(self, action: #selector(viewbill))

        
        let deletegesture = UITapGestureRecognizer()
        deletegesture.numberOfTapsRequired = 1
        deletegesture.addTarget(self, action: #selector(deletecoustmer))
        
        let addgesture = UITapGestureRecognizer()
              addgesture.numberOfTapsRequired = 1
              addgesture.addTarget(self, action: #selector(addbill))
        
        let addveh = UITapGestureRecognizer()
                    addveh.numberOfTapsRequired = 1
                    addveh.addTarget(self, action: #selector(addvehicle))
        
        let contactgesture = UITapGestureRecognizer()
                    contactgesture.numberOfTapsRequired = 1
                    contactgesture.addTarget(self, action: #selector(contactbrowser))
        
        let aboutgesture = UITapGestureRecognizer()
                    aboutgesture.numberOfTapsRequired = 1
                    aboutgesture.addTarget(self, action: #selector(aboutbrowser))

            
         view_deletecoustmer.addGestureRecognizer(deletegesture)
         view_coustmers.addGestureRecognizer(viewgesture)
         view_addbills.addGestureRecognizer(addgesture)
         view_add_vehicle.addGestureRecognizer(addveh)
         view_aboutus.addGestureRecognizer(contactgesture)
         view_contactus.addGestureRecognizer(aboutgesture)

         view_coustmers.layer.cornerRadius = 10.0
         view_coustmers.layer.shadowColor = UIColor.gray.cgColor
         view_coustmers.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
         view_coustmers.layer.shadowRadius = 12.0
         view_coustmers.layer.shadowOpacity = 0.7
        
         view_deletecoustmer.layer.cornerRadius = 10.0
         view_deletecoustmer.layer.shadowColor = UIColor.gray.cgColor
         view_deletecoustmer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
         view_deletecoustmer.layer.shadowRadius = 12.0
         view_deletecoustmer.layer.shadowOpacity = 0.7
        
             view_add_vehicle.layer.cornerRadius = 10.0
             view_add_vehicle.layer.shadowColor = UIColor.gray.cgColor
             view_add_vehicle.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
             view_add_vehicle.layer.shadowRadius = 12.0
             view_add_vehicle.layer.shadowOpacity = 0.7
        
             view_aboutus.layer.cornerRadius = 10.0
             view_aboutus.layer.shadowColor = UIColor.gray.cgColor
             view_aboutus.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
             view_aboutus.layer.shadowRadius = 12.0
             view_aboutus.layer.shadowOpacity = 0.7

               view_contactus.layer.cornerRadius = 10.0
               view_contactus.layer.shadowColor = UIColor.gray.cgColor
               view_contactus.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
               view_contactus.layer.shadowRadius = 12.0
               view_contactus.layer.shadowOpacity = 0.7
        
        
         view_addbills.layer.cornerRadius = 10.0
         view_addbills.layer.shadowColor = UIColor.gray.cgColor
         view_addbills.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
         view_addbills.layer.shadowRadius = 12.0
         view_addbills.layer.shadowOpacity = 0.7
    }
    
    @objc func addvehicle() {
           print("Tap gesture.....")
           let obj = self.storyboard?.instantiateViewController(withIdentifier: "CoustmerlistViewController") as! CoustmerlistViewController
        
        obj.optionSelect = "addvehicle"
           
                  self.navigationController?.pushViewController(obj, animated: true)
       }
    
    @objc func contactbrowser() {
           print("Tap gesture.....")
           let obj = self.storyboard?.instantiateViewController(withIdentifier: "WebviewViewController") as! WebviewViewController
           obj.optionSelect = "contact"
                  self.navigationController?.pushViewController(obj, animated: true)
       }
    
    @objc func aboutbrowser() {
           print("Tap gesture.....")
           let obj = self.storyboard?.instantiateViewController(withIdentifier: "WebviewViewController") as! WebviewViewController
           obj.optionSelect = "about"
                  self.navigationController?.pushViewController(obj, animated: true)
       }

    
    @objc func deletecoustmer() {
        print("Tap gesture.....")
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "CoustmerlistViewController") as! CoustmerlistViewController
        obj.optionSelect = "delete"
               self.navigationController?.pushViewController(obj, animated: true)
    }
    
    @objc func addbill() {
        print("Tap addbill.....")
        
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "AddBillViewController") as! AddBillViewController
   
               self.navigationController?.pushViewController(obj, animated: true)
    }
    
    
    @objc func viewbill() {
        print("Tap viewbill.....")
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "CoustmerlistViewController") as! CoustmerlistViewController
               obj.optionSelect = "empdesc"
               self.navigationController?.pushViewController(obj, animated: true)
    }
    
    @IBAction func but_backhome(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "Are you sure you want to logout", preferredStyle: .alert)

                   alert.addAction(UIAlertAction(title: "logout", style: .default, handler: { action in
                       //run your function here
                        let obj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                    obj.decison = 0
                              self.navigationController?.pushViewController(obj, animated: true)
                   }))

                   alert.addAction(UIAlertAction(title: "Continue", style: .cancel, handler: nil))
                   self.present(alert, animated: true)
    }
}
