import UIKit

class CoustmerlistViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

@IBOutlet var tabelview: UITableView!
@IBOutlet var but_back_clist: UIButton!

var optionSelect : String!


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return( UserDetails.shared.userarray.count)
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tabelview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CoustmerTableViewCell
    cell.txtCellName.text =  UserDetails.shared.userarray[indexPath.row].empname
    cell.txtCellEmail.text =  UserDetails.shared.userarray[indexPath.row].empid
    cell.txtCellPhone.text =  UserDetails.shared.userarray[indexPath.row].dateofbirth
    return cell
}
