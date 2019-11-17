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


