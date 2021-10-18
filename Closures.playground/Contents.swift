import UIKit

var numbers = [10, 12, -9, 4, 5, 16, 7, 0, 9, 10]

//print numbers in ascending order
print(numbers.sorted())

//returns true if number2 is greater than number 2
func order(number1: Int, number2: Int) -> Bool{
    return number1 > number2
}

//closure with type explicitly stated
var orderedClosure : (Int,Int) -> Bool = {(number1: Int, number2:  Int) -> Bool in
    return number1 > number2
}

//print numbers in descending order
print(numbers.sorted(by: orderedClosure))

//closure with inferred type
var orderedClosure2  = {(number1: Int, number2:  Int) -> Bool in return number1 > number2}

//print numbers in descending order
print(numbers.sorted(by: orderedClosure))

//simplifying our closure using the fact that swift can infer stuff
//infer the return statement if there is only one statement in the closure
var orderedClosure3  = {(number1: Int, number2:  Int) -> Bool in number1 > number2}

//simplifying our closure using the fact that swift can infer stuff
//infer the names of parameters (im gonna be rich)
var orderedClosure4 : (Int,Int) -> Bool = {$0 < $1}

print(numbers.sorted(by: {$0 > $1}))


var teachers = [(317, "Mays"), (134, "Wals"), (227, "Swope"), (210, "Vaccaro")]

var compare :((Int,String), (Int, String)) -> Bool = {$0.0 < $1.0}

print(teachers.sorted(by: {$0.1 < $1.1}))


//wrire a closure that is passed 2 integers and returns their average

var avg : (Int, Int) -> Double = {(Double($0) + Double($1))/2.0 }

print(avg(1,2))

