import UIKit

//simulates 20 dice rolls
for _ in 1...20{
    let diceRoll = dRx5()
    print(": \(getPnts(roll:diceRoll)) points in the sequnce \(diceRoll[0]), \(diceRoll[1]), \(diceRoll[2]), \(diceRoll[3]), \(diceRoll[4]). \n")
}

//dR is for diceRoll. I made the name small so that way I don't have to wory about typing it up every time I use it.
func dR() -> Int{
    return Int.random(in: 1...6)
}

//does a turn
func dRx5() -> [Int]{
    //rS short for returnStatement
    var rS = [Int]()
   
    //adds dice rolls to the list
    for _ in 1...5{
        rS.append(dR())
    }
    return rS
}

func getPnts(roll:[Int]) -> Int{
    
    //idiot-proofing the code
    if roll.count != 5{
        return 0
    }
    //yooo its what we just learned in class!
    let setRolls = Set(roll)
    
    //list of possible values
    var possibleRoll = roll
   
    //parameters are immutable so I had to make a new sorted array
    var sortedRoll = roll
    sortedRoll.sort()
  
    //a necessary evil
    var mode = 0
    var modereps = 0
    var altModeReps = 0
    var altMode = 0
    
    //yacht Sea option
    if setRolls.count == 1{
        print("yacht sea", terminator:"")
        return 50
    }
    //Small Straight
    else if setRolls.count == 4{
        print("small straight", terminator:"")
        return 30
    }
    
    //Full house
    else if setRolls.count == 2 && (sortedRoll[0] == sortedRoll[1] && sortedRoll[3] == sortedRoll[4]){
       print("full house", terminator:"")
        return 25
    }
    
    //I couldn't get that other guy's code to work so I made my own
    for r in 0...sortedRoll.count-2{
        if sortedRoll[r] == sortedRoll[r+1]{
            if mode == 0{
                mode = sortedRoll[r]
                modereps += 1
            }
             if modereps != 0 && sortedRoll[r] == mode{
                modereps += 1
            }
             if sortedRoll[r] != mode{
                altMode = sortedRoll[r]
                altModeReps+=1
            }
             if (sortedRoll[r] == altMode){
                altModeReps += 1
            }
        }
    }
    
    //printing out what caused the highest number to be a thing
    possibleRoll.sort()
    if modereps * mode > possibleRoll[4] || altMode*altModeReps > possibleRoll[4]{
        if modereps * mode > altMode*altModeReps{
            print("\(mode) occured \(modereps) times", terminator:"")
        }else{
            print("\(altMode) occured \(altModeReps) times", terminator:"")
        }
    }else{
        print("\(possibleRoll[4]) was the highest number", terminator:"")
    }
    
    //finding what gets the most points
    possibleRoll.append(mode*modereps)
    possibleRoll.append(altMode*altModeReps)
    possibleRoll.sort()
    return possibleRoll[6]
    
}


