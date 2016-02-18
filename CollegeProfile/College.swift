import UIKit
class College : NSObject
{
    var name : String!
    var numberOfStudents : Int!
    var location : String!
    var image : UIImage!
    
    init(n : String, nos : Int, l : String) {
        name = n
        numberOfStudents = nos
        location = l
    }
    
    override init()
    {
        name = ""
        numberOfStudents = 0
        location = ""
    }
}