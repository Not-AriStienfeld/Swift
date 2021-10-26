class Rectangle{
    
    //stored properties
    var length : Double = 1
    var width : Double = 1
    
    //computed property
    var area : Double {return length * width}
    var perimiter : Double {return (2.0 * length) + (2.0 * width)}
    
    init(length: Double = 1, width : Double = 2){
        self.length = length
        self.width = width
    }
    
    
    func increaseWidth(factor :Double){
        width *= factor
    }
    func IsGreater() -> Bool{
        return length > width
    }
}

class RightRectangularPrims{
    //stored properties
    var base : Rectangle = Rectangle()
    var height : Double = 5
    
    //computed property
    var surfaceAre : Double {return (base.area * 2) + (base.length * height * 2) + (base.width * height)}
    var volume :Double {return height * base.area}
   
    
    init(length: Double = 1, width : Double = 2, height :Double = 3){
        self.base.length = length
        self.base.width = width
        self.height = height
    }
    
}
var r : Rectangle = Rectangle(length: 6)

print(r.length)
print(r.area)
