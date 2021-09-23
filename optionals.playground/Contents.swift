import UIKit


//pass function a set number and it will return the class that you have during that set
func getClass(set:Int) -> String?{
    switch set {
    case 1:
        return "U.S. history H"
    case 2:
        return "film and lit H"
    case 3:
        return "precalc"
    case 4:
        return "comp sci seminar"
    case 5:
        return "AP physics"
    case 6:
        return "french"
    case 7:
        return "genetics"
    case 8:
        return "switchSet"
    default:
        return nil
    }
        
    
}

let easyWay = String(getClass(set: 9) ?? "none")
print(easyWay)
