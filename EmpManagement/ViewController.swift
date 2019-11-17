
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var main_view: UIView!
    @IBOutlet var imgLog: UIImageView!
    @IBOutlet var butlog: UIButton!
    @IBOutlet var edt_admin_password: UITextField!
    @IBOutlet var edt_admin_username: UITextField!
    let username : String = "admin"
    let password : String = "12345678"
    var decison : Int = 0
    var Astatus : Bool = false
    var Cstatus : Bool = false
    var checkstatus : Bool = false
    @IBOutlet var switchout: UISwitch!
    
    override func viewDidLoad() {
           super.viewDidLoad()
// Do any additional setup after loading the view.
