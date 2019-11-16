import UIKit

class CoustmerlistViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

@IBOutlet var tabelview: UITableView!
@IBOutlet var but_back_clist: UIButton!

var optionSelect : String!


func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return( UserDetails.shared.userarray.count)
}
