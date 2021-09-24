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

print(String(getBool(true)))

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
