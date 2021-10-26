import UIKit
//puns :(

//thanks for the code. 
extension String {
    func substring(from: Int, to: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: from)
        let end = self.index(self.startIndex, offsetBy: to)
        let range = start..<end
        return String(self[range])
    }
}


//just some fake inputs
let newmeralA = "ABC"
let newmeralB = "ACD"



//joins 2 strings together in alternating characters
var join :(String, String) -> String = {
   var returnString = ""
   for i in 0...$0.count-1{
        returnString += $0.substring(from: i, to: i + 1)
        returnString += $1.substring(from: i, to: i + 1)
    }
    return returnString
}
print(join(newmeralA, newmeralB))



//promotes based on that weird promotion rule
var promotion : (String, String) -> String = {
    
    var returnString = ""
    
    //loops through every spot in the string
    for i in 0...$0.count-1{
   
        //checks if one is larger than the other
        if $0.substring(from: i, to: i + 1) >  $1.substring(from: i, to: i + 1){
            returnString += $0.substring(from: i, to: i + 1)
        }else if $0.substring(from: i, to: i + 1) <  $1.substring(from: i, to: i + 1){
            returnString += $1.substring(from: i, to: i + 1)
       
        //checks if they are both D
        }else if $0.substring(from: i, to: i + 1) ==  $1.substring(from: i, to: i + 1) && $1.substring(from: i, to: i + 1) == "D"{
            returnString += "A"
        }else{
            
            //promotes if both are the same
            if $1.substring(from: i, to: i + 1) == "A"{
                returnString += "B"
            }else if $1.substring(from: i, to: i + 1) == "B"{
                returnString += "C"
            }else if $1.substring(from: i, to: i + 1) == "C"{
                returnString += "D"
            }
        }
        
    }
    return returnString
}
print(promotion(newmeralA, newmeralB))



//mirrors by putting string b, then string a, then reversed string b.
var mirror : (String, String) -> String = {
    //adds string b
    var returnStatement = $1
   
    //then string a
    returnStatement += $0
    
    //then reversed string b
    for i in (0...$0.count-1).reversed(){
        returnStatement += $1.substring(from: i , to: i+1)
    }
    
    return returnStatement
}

print(mirror(newmeralA, newmeralB))
