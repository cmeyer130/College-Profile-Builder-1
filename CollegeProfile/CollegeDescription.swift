import UIKit
class Description : UIViewController
{
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var enrollment: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var name: UILabel!
    var colleges : [College] = []
    
    var e : Int = -1
    var l : String = "l"
    var n : String = "n"
    
    override func viewDidLoad()
    {
        enrollment.text = "\(e)"
        location.text = l
        name.text = n
    }
    
    @IBAction func done(sender: AnyObject)
    {
        for var i = 0; i < colleges.count; i++
        {
            if colleges[i].name == n
            {
                colleges[i].location = self.location.text!
                colleges[i].numberOfStudents = (Int)(self.enrollment.text!)!
            }
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}