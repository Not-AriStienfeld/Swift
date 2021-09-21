import UIKit
//basic initialization
let hardDrive = 49.95
let softwarePackage = 29.00
let wPhone = 399.0
var totalPrice: Double = 0.0
var penPrice = 500.0

//hard drives
let hrdNum = 8.0
var hrd💰 = 0.0
if (hrdNum >= 5 && hrdNum  < 10){
 hrd💰 = (hrdNum * hardDrive) * 0.95
}else if hrdNum >= 10{
    hrd💰 = (hrdNum * hardDrive) * 0.9
}
totalPrice += hrd💰

//wPhone
let wPhoneNum = 4.0
var wPhone💰 = wPhoneNum * wPhone
totalPrice += wPhone💰

//software
let softwareNum = 3.0
var software💰 = (softwareNum * softwarePackage) - (wPhoneNum * 10.0)
if (software💰 < 0.0){
    software💰 = 0
}

//pens
let penNum = 34.0
if penNum < 5.0 && penNum > 1.0{
    penPrice -= penNum * 50.0
}else{
    penPrice = 300
}
var pen💰 = penPrice * penNum
totalPrice += pen💰
totalPrice *= 1.06

print(totalPrice)







