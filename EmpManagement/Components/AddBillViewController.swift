//
//  AddBillViewController.swift
//  AgeCalculator
//
//  Created by sanjeev gupta on 2019-11-01.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController  {

    @IBOutlet var edt_empid: UITextField!
    @IBOutlet var edt_empname: UITextField!
    @IBOutlet var edtDate: UITextField!
    @IBOutlet weak var segment_contoller: UISegmentedControl!
    
    //intern view data
    @IBOutlet weak var inter_View: UIView!
    @IBOutlet var edt_inten_school: UITextField!
    @IBOutlet var edt_salary_intern: UITextField!
    
    //ptc viewdata
    @IBOutlet weak var partime_view_ptc: UIView!
    @IBOutlet var edt_ptc_rate: UITextField!
    @IBOutlet var edt_ptc_hw: UITextField!
    @IBOutlet var edt_ptc_cp: UITextField!
    
    //fulltime view data
    @IBOutlet var fulltime_view: UIView!
    @IBOutlet var edt_fulltime_bonus: UITextField!
    @IBOutlet var edt_fulltime_salary: UITextField!
    
    //ptf view data
    @IBOutlet weak var partTime_view_ptf: UIView!
    @IBOutlet var edt_rate_ptf: UITextField!
    @IBOutlet var edt_hourworked_ptf: UITextField!
    @IBOutlet var edt_partime_ptf: UITextField!
    
    var datePicker : UIDatePicker!
    var veharray : [Vehicledata] = []
    @IBOutlet var but_saveemp: UIButton!
    
    var seglect : Int = 0
    
    
    @IBAction func addemployee(_ sender: Any) {
        
        if(edt_empname.text == "")
                     {
                         showdialog(data: "please enter employee name")
                     }
                     else if(edt_empid.text == "")
                     {
                           showdialog(data: "please enter employee id")
                     }
                     else if(edtDate.text == "")
                     {
                           showdialog(data: "please enter date of birth")
                     }
        else if(checktype(x: seglect))
                     {
                           //showdialog(data: "please select year")
                     }
              else
              {
                 var empobj = Userdata()
                 empobj.empname = edt_empname.text
                 empobj.empid = edt_empid.text
                 empobj.dateofbirth = edtDate.text
  
                                                   if(seglect == 0)
                                                   {
                                                       empobj.type = "Intern"
                                                       empobj.schoolname = edt_inten_school.text
                                                       empobj.salary = edt_salary_intern.text
                                                   }
                                                   else if(seglect == 1)
                                                   {
                                                    empobj.type = "FullTime"
                                                    empobj.salary = edt_fulltime_salary.text
                                                    empobj.bonus = edt_fulltime_bonus.text
                                                   }
                                                   else if(seglect == 2)
                                                   {
                                                    empobj.type = "PartTimeFixed"
                                                    empobj.rate = edt_rate_ptf.text
                                                    empobj.HourWorked = edt_hourworked_ptf.text
                                                    empobj.fixedamount = edt_partime_ptf.text
                                                   }
                                                   else if(seglect == 3)
                                                   {
                                                    empobj.type = "PartTimeCommissioned"
                                                    empobj.rate = edt_ptc_rate.text
                                                    empobj.HourWorked = edt_ptc_hw.text
                                                    empobj.commissionpercent = edt_ptc_cp.text
                                                          }
                
                UserDetails.shared.userarray.append(empobj)
                print(UserDetails.shared.userarray.count)
                print(UserDetails.shared.userarray)
                
                  let obj = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                  self.navigationController?.pushViewController(obj, animated: true)
        }
    }
    

        override func viewDidLoad() {
            super.viewDidLoad()
     
              self.but_saveemp.layer.cornerRadius = 10
              self.but_saveemp.clipsToBounds = true
            
                         inter_View.isHidden = false
                         partime_view_ptc.isHidden = true
                         partTime_view_ptf.isHidden = true
                         fulltime_view.isHidden = true
            
            segment_contoller.addTarget(self, action: #selector(mapTypeChanged), for: .valueChanged)
            textFieldDidBeginEditing(edtDate)
            }
        
        @objc func mapTypeChanged(segControl: UISegmentedControl) {
            if segControl.selectedSegmentIndex == 0{
                inter_View.isHidden = false
                                        partime_view_ptc.isHidden = true
                                        partTime_view_ptf.isHidden = true
                                        fulltime_view.isHidden = true
                
                seglect = 0
                
            }else if segControl.selectedSegmentIndex == 1 {
             inter_View.isHidden = true
                                         partime_view_ptc.isHidden = true
                                         partTime_view_ptf.isHidden = true
                                         fulltime_view.isHidden = false
                
                seglect = 1
                
            }else if segControl.selectedSegmentIndex == 2{
           inter_View.isHidden = true
                                   partime_view_ptc.isHidden = true
                                   partTime_view_ptf.isHidden = false
                                   fulltime_view.isHidden = true
                
                seglect = 2
                
            }else if segControl.selectedSegmentIndex == 3{
                    inter_View.isHidden = true
                                   partime_view_ptc.isHidden = false
                                   partTime_view_ptf.isHidden = true
                                   fulltime_view.isHidden = true
                
                seglect = 3
                
            }
        }
        
        @IBAction func butBackBill(_ sender: Any) {
            
            let obj = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                  self.navigationController?.pushViewController(obj, animated: true)
        }
        
        
        func showdialog(data : String )  {
            
                    let alert = UIAlertController(title: "Alert", message: data, preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//                    alert.addAction(UIAlertAction(title: "Done", style: .cancel, handler: { action in
//                        //run your function here
//
//                        if(data == "Successfully bill added")
//                        {
//                            self.GoToNewShoot()
//                        }
//
//                    }))

                    self.present(alert, animated: true)
            
        }
        
        func GoToNewShoot()
        {
            let obj = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(obj, animated: true)
        }
        
      
       override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }

    }

    extension AddBillViewController : UITableViewDelegate{

         //MARK:- textFiled Delegate
         func textFieldDidBeginEditing(_ textField: UITextField) {
             self.pickUpDate(self.edtDate)
            // self.pickUpDatee(self.label)
         }
         
        
         
         //MARK:- Function of datePicker
         func pickUpDate(_ textField : UITextField){
             
             // DatePicker
             self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
             self.datePicker.backgroundColor = UIColor.white
             self.datePicker.datePickerMode = UIDatePicker.Mode.date
             textField.inputView = self.datePicker
             
             // ToolBar
             let toolBar = UIToolbar()
             toolBar.barStyle = .default
             toolBar.isTranslucent = true
             toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
             toolBar.sizeToFit()
             
             // Adding Button ToolBar
             let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClick))
             let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
             let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClick))
             toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
             toolBar.isUserInteractionEnabled = true
             textField.inputAccessoryView = toolBar
         }
         
         // MARK:- Button Done and Cancel
         @objc func doneClick() {
             let dateFormatter1 = DateFormatter()
             dateFormatter1.dateStyle = .medium
             dateFormatter1.timeStyle = .none
             edtDate.text = dateFormatter1.string(from: datePicker.date)
             edtDate.resignFirstResponder()
             //label.text = dateFormatter1.string(from: datePicker.date)
         }
         
         @objc func cancelClick() {
             edtDate.resignFirstResponder()
         }
        
        func checktype (x : Int)->Bool
               {

                var checkreturn : Bool = false
                
                if(x == 0)
                                    {
                                        checkreturn = interncheck ()
                                    }
                                    else if(x == 1)
                                    {
                                           checkreturn = fulltime ()
                                    }
                                    else if(x == 2)
                                    {
                                           checkreturn = ptfcheck ()
                                    }
                                    else if(x == 3)
                                    {
                                           checkreturn = ptccheck ()
                                    }
                
                return checkreturn
                
                
        }
        
        func interncheck ()->Bool
        {
            var checkreturn : Bool = false
            
            if(edt_inten_school.text == "")
                                {
                                    showdialog(data: "please enter the school")
                                    checkreturn = true
                                }
                                else
            {
                checkreturn = false
            }
            
            return checkreturn
        }
        
        func fulltime ()->Bool
               {
                   var checkreturn : Bool = false
                   
                 if(edt_fulltime_salary.text == "")
                                                      {
                                                            showdialog(data: "please enter salary")
                                                        checkreturn = true
                                                      }
                  else if(edt_fulltime_bonus.text == "")
                                       {
                                           showdialog(data: "please enter bonus")
                                           checkreturn = true
                                       }
                                       else if(edt_fulltime_salary.text == "")
                                       {
                                             showdialog(data: "please enter salary")
                                         checkreturn = true
                                       }
                                       else {
                     checkreturn = false
                                       }
                
                return checkreturn
               }

        
        func ptfcheck ()->Bool
               {
                   var checkreturn : Bool = false
                   
                   if(edt_rate_ptf.text == "")
                                       {
                                           showdialog(data: "enter rate")
                                       }
                                       else if(edt_hourworked_ptf.text == "")
                                       {
                                             showdialog(data: "enter hour worked")
                                       }
                                       else if(edt_partime_ptf.text == "")
                                       {
                                             showdialog(data: "enter fixed amount")
                                       }
                                        else {
                                                          checkreturn = false
                                                                            }
                                                     
                                                     return checkreturn
               }

        
        func ptccheck ()->Bool
               {
                   var checkreturn : Bool = false
                   
                   if(edt_ptc_rate.text == "")
                                       {
                                           showdialog(data: "please enter rate")
                                       }
                                       else if(edt_ptc_hw.text == "")
                                       {
                                             showdialog(data: "please enter hour worked")
                                       }
                                       else if(edt_ptc_cp.text == "")
                                       {
                                             showdialog(data: "please enter commission percentage")
                                       }
                                        else {
                                                          checkreturn = false
                                                                            }
                                                     
                                                     return checkreturn
               }
        
       
        
       }

        

