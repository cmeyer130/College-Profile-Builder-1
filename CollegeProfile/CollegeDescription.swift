import UIKit
import SafariServices
class Description : UIViewController, SFSafariViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    
    @IBOutlet weak var wsite: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var enrollment: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var name: UILabel!
    var colleges : [College] = []
    let imagePicker = UIImagePickerController()
    var image = UIImage(named: "uofi")

    var e : Int = -1
    var l : String = "l"
    var n : String = "n"
    var w : String = "w"

    
    override func viewDidLoad()
    {
        imagePicker.delegate = self
        enrollment.text = "\(e)"
        location.text = l
        name.text = n
        wsite.text  = w
    }
    
    @IBAction func photoButtonTapped(sender: UIButton)
    {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true) { () -> Void in
            let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.myImageView.image = selectedImage
        }
    }
    @IBAction func websiteButtonTapped(sender: UIButton)
        {
            let myUrl = NSURL(string: wsite.text!)
            //let request = NSURLRequest(URL: myUrl!)
            //webView.loadRequest(request)
            let svc = SFSafariViewController(URL: myUrl!)
            svc.delegate = self
            presentViewController(svc, animated: true, completion: nil)
    }
    @IBAction func done(sender: AnyObject)
    {
        for var i = 0; i < colleges.count; i++
        {
            if colleges[i].name == n
            {
                colleges[i].location = self.location.text!
                colleges[i].numberOfStudents = (Int)(self.enrollment.text!)!
                colleges[i].wsite = self.wsite.text!
            }
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}