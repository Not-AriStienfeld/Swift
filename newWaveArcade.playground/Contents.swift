import UIKit
print("highScore will now be passed 1, 4, and 2")
print(highScore(1, 4,2))
print("\nIsClosed will now be passed true and a temperature of 1124")
print(isClosed(isRaining: true, temperature: 1124))
print("\nmultiply will now be passed \"Monday\", and 7")
print(multiply(tickets : 7, day:"Monday"))
print("\na game of racing will now commence")
print("moves = " + String(racing()))
print("\na game of Knock Down will now commence")
print("I won = " + String(knockdown()))

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
        return true
    }
    return false
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

func racing() -> Int{
    var moves = 0
    let finish = 50
    var space = 0;
    while space < finish{
        space += Int.random(in: 1...5)
        moves += 1
    }
    
    return moves
    
}
func knockdown() -> Bool{
    var pins = 5
    for _ in 1...3{
        let pinsKnocked = Int.random(in: 0...10)
        if pinsKnocked <= 3{
            pins -= 0
        }else if pinsKnocked <= 6{
            pins -= 1
        }else if pinsKnocked <= 8{
            pins -= 2
        }else if pinsKnocked == 9{
            pins -= 3
        }else{
            pins -= 4
        }
    }
    
    if pins < 1{
        return true
    }
    return false
}
