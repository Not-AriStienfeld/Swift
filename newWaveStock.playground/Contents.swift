import UIKit

//I named it prodQuant because its PRODucts and QUANTity
var prodQuant: [String:Int] = ["hard drives":502, "software":7, "wPhones":24, "wPens":700532]

//since user input is close to nonexistant, any time you see fakeInout, that is representing someone entering in the input

//adding a product

let fakeInputSet = 3
let fakeInputSet2 = "wComputers"

prodQuant[fakeInputSet2] = fakeInputSet
print("\(fakeInputSet2) now has a value of \(fakeInputSet)")
print("\n\n")





//adding to a product

let fakeInputAdd = 5
let fakeInputAdd2 = "wPhones"

if var numPhones = prodQuant[fakeInputAdd2]{
    numPhones += fakeInputAdd
    prodQuant[fakeInputAdd2] = numPhones
    print("there are now \(prodQuant[fakeInputAdd2] ?? 0) \(fakeInputAdd2)")
}else{
    print("where'd you learn to type, a farm? value does not exist")
}
print("\n\n")





//removing from a product

let fakeInputRM = 5;
let fakeInputRM2 = "hard drives"

if var numDrives = prodQuant[fakeInputRM2]{
    numDrives -= fakeInputRM
    prodQuant[fakeInputRM2] = numDrives
    print("there are now \(prodQuant[fakeInputRM2] ?? 0) \(fakeInputRM2)")
}else{
    print("where'd you learn to type, a farm? value does not exist")
}
print("\n\n")




//finding the total in stock
var totalAmmount = 0
for (_, ammount) in prodQuant{
    totalAmmount += ammount
}
print("there is a total of \(totalAmmount) items in stock")
print("\n\n")




//itterate throught the dictionary and print out a nice list
var quantListed: [Int] = []
for (_, quantity) in prodQuant{
    quantListed.append(quantity)
}
quantListed.sort()
var prodRemoveQuant = prodQuant
for i in 0...quantListed.count-1{
    for (prod, _) in prodRemoveQuant {
        if quantListed[i] == prodRemoveQuant[prod]{
            print("we have \(quantListed[i]) of \(prod) in stock")
            prodRemoveQuant[prod] = nil
            
        }
    }
}
print("\n\n")




//removing a product

let fakeInputRemove = "software"
if let _ = prodQuant[fakeInputRemove]{
    prodQuant[fakeInputRemove] = nil
    print("\(fakeInputRemove) is now gone")
}else{
    print("where'd you learn to type, a farm? value does not exist")
}




