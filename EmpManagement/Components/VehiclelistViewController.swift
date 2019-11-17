//
//  VehiclelistViewController.swift
//  EmpManagement
//
//  Created by sanjeev gupta on 2019-11-15.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit

class VehiclelistViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

@IBOutlet var vehicletabel: UITableView!
@IBOutlet var but_back_vlist: UIButton!
@IBOutlet var but_add_vehicle: UIButton!
var position : Int!


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return( UserDetails.shared.userarray[position].Vehicle.count)
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

let cell = vehicletabel.dequeueReusableCell(withIdentifier: "vehiclecell", for: indexPath) as! VehicleListTableViewCell
cell.txt_vehicle_type.text =  UserDetails.shared.userarray[position].Vehicle[indexPath.row].vehicletype
cell.txt_vehicle_model.text =  UserDetails.shared.userarray[position].Vehicle[indexPath.row].model
cell.txt_vehicle_plate.text =  UserDetails.shared.userarray[position].Vehicle[indexPath.row].plate
cell.txt_comapny.text =  UserDetails.shared.userarray[position].Vehicle[indexPath.row].company

if(UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Honda")
{
 cell.img_list.image = UIImage(named: "honda")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Chervolet")
{
    cell.img_list.image = UIImage(named: "cheve")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "BMW")
{
    cell.img_list.image = UIImage(named: "bmw")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Mercedes")
{
    cell.img_list.image = UIImage(named: "mercedes")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Landrover")
{
    cell.img_list.image = UIImage(named: "landrover")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Bajaj")
{
    cell.img_list.image = UIImage(named: "chetak")
}
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Ford")
                  {
                      cell.img_list.image = UIImage(named: "ford")
                  }
                  else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Suzuki")
                  {
                      cell.img_list.image = UIImage(named: "suzuki")
                  }
else if (UserDetails.shared.userarray[position].Vehicle[indexPath.row].company == "Audi")
                                  {
                                      cell.img_list.image = UIImage(named: "Audi")
                                  }
               
    
    
    
    return cell
}

