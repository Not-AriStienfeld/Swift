import UIKit
/*
let x = 123

if x < 100 && x > 30 && x%7 != 0 && x%2 == 0{
    print("are you happy bob?")
}

let n = 49
for index in 1...5{
    print(index)
}

let number :Int = 64
var testval = test(a: number)
if test(a: number){
    print("it worked")
}

else{
    print("sad")
}

func test(a: Int) -> Bool{
    if(a/8 == 8){
        return true
    }
    return false
}
 */
var counters : [Int: Int] = [1:0, 2:0, 3:0, 4:0, 5:0, 6:0]
let words : [Int:String] = [1:"one", 2:"two", 3:"three", 4:"four", 5:"five", 6:"six"]

for _ in 1...5{
    let roll = Int.random(in:1...6)
    
    if var count = counters[roll]{
        count+=1
        counters[roll] = count
    }
}

print(counters)
var summations: [Int:Int] = [:]
var maxroll: [Int] = [0]
var maxcount: [Int] = [0]
for (roll, count) in counters{

    summations[roll] = count * roll
    if Int(summations[roll] ?? 0) > maxroll[0]*maxcount[0]{
        maxcount[0] = count
        maxroll[0] = roll
    }
    else if Int(summations[roll] ?? 0) == maxroll[0]*maxcount[0]{
        maxroll.append(count)
        maxcount.append(count)
    }
    
}
var counter = 0
for i in maxroll{
   
    if (maxroll[0] * maxcount[0]) > i * maxcount[counter]{
        maxroll.remove(at: counter)
        maxcount.remove(at: counter)
    }
    counter += 1
}

print(summations)

var values = summations.values.sorted(by: >)
print(values)
//print("the highest was found by \(maxroll) happening \(maxcount) times")

//print(String(getBool(true)))
for i in 0...maxroll.count-1{
    print("the highest was found by \(maxroll[i]) happening \(maxcount[i]) times")
}

print(values[0])

func getBool(_ value:Bool) -> Bool{
    print("getting boolean value")
    for i in 1...100{
        usleep(1000000/20)
        print(String(i) + " percent")
        
    }
    print("Done!")
    if value == true{
        return true
    }else{
        return false
    }
}
//pain

