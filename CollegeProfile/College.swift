import UIKit
class College : NSObject
{
    var name : String!
    var numberOfStudents : Int!
    var location : String!
    var image : UIImage!
    var wsite : String!


    
    init(n : String, nos : Int, l : String, w : String) {
        name = n
        numberOfStudents = nos
        location = l
        wsite = w

    }
    
    override init()
    {
        name = ""
        numberOfStudents = 0
        location = ""
        wsite = ""

    }
}