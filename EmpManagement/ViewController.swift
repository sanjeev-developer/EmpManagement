
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

self.butlog.layer.cornerRadius = 10
self.butlog.clipsToBounds = true
self.imgLog.image = UIImage(named:"logo")

if(UserDetails.shared.userarray.isEmpty)
{
var temp : Int = 2346
var userarray = ["naobie","wilson","tyler","desmond","santa monica"]
var emailarray = ["naobie@gmail.com","wilson@gmail.com","tyler@gmail.com","desmond@gmail.com","santamonica@gmail.com"]

