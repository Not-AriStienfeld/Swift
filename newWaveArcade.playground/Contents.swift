import UIKit
print(highScore(1, 4,2))

func highScore(_ first:Int, _ second:Int, _ third:Int) -> Int{
    var max = first
    if second > max {
        max = second
    }
    if third > max{
        max = third
    }
    return max
}


func isClosed(isRaining:Bool, temperature:Double) -> Bool{
    if isRaining && (temperature < 65 || temperature > 95){
        return false
    }
    return true
}


func multiply(tickets:Int, day:String) -> Double{
    if(day == "Monday"){
        return Double(tickets * 2)
    }else if (day == "Tuesday"){
        return Double(tickets * 3)
    }else if (day == "Wednesday"){
        return Double(tickets) * 2.1
    }
    else if (day == "Thursday"){
        return Double(tickets) * 2.5
    }
    
    return 1.0
}
