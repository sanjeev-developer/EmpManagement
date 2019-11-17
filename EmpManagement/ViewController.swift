
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
for i in 1...userarray.count{
                         var userdata = Userdata()

                             // UserDetails.shared.name = "Sanjeev"
userdata.empname = userarray[i-1]
userdata.empid = "Intern-345"
userdata.dateofbirth = "23rd nov 1992"
                         userdata.type = "Intern"
                         userdata.salary = "100000"
                         userdata.fixedamount = "5000"
                         userdata.commissionpercent = "20"
                         userdata.schoolname = "new school"
                         userdata.bonus = "50"

var vehobj = Vehicledata()
                       vehobj.vehicletype = "Car"
                       vehobj.company = "Honda"
                       vehobj.model = "HXT678"
                       vehobj.plate = "ghj345"
                       vehobj.year = "2010"
                       
                       userdata.Vehicle.append(vehobj)
                         UserDetails.shared.userarray.append(userdata)
                      }
                    }


var checkAstatus = UserDefaults.standard.bool(forKey: "Key")
            if(checkAstatus)
{
edt_admin_username.text = UserDefaults.standard.string(forKey: "username")
edt_admin_password.text = UserDefaults.standard.string(forKey: "password")
                              switchout.setOn(true, animated: false)
                             }

