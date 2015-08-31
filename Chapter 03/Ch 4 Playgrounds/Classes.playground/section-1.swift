struct Distance {
    var meters: Double = 0.0

    init?(_ meters: Double) {
        if meters < 0.0 { return nil }
        self.meters = meters
    }

    init?(centimeters: Double) {
        self.init(centimeters / 100.0)
    }

    init?(inches: Double) {
        self.init(inches / 39.3701)
    }
}

let d1 = Distance(1.0)
let d2 = Distance(centimeters: 100.0)
let d3 = Distance(inches: 39.3701)

let d4 = Distance(-1.0)
let d5 = Distance(centimeters: -100.0)
let d6 = Distance(inches: -39.3701)


struct Color {
    let red: Double
    let green: Double
    let blue: Double

    init(fromRed red: Int, green: Int, blue: Int) {
        self.red = Double(red) / 255.0
        self.green = Double(green) / 255.0
        self.blue = Double(blue) / 255.0
    }
}

let c1 = Color(fromRed: 242, green: 132, blue: 64)
c1.red
c1.green
c1.blue


struct Square {
    var lengthOfSide: Int
    var perimeter: Int {
        get {
            return self.lengthOfSide * 4
        }
        set {
            self.lengthOfSide = newValue / 4
        }
    }
}

var square = Square(lengthOfSide: 10)
square.perimeter
square.perimeter = 100
square.lengthOfSide
square.lengthOfSide = 4
square.perimeter


struct ObservableSquare {
    var lengthOfSide: Int {
        willSet {
            println("New value: \(newValue)")
        }
    }

    init(lengthOfSide: Int) {
        self.lengthOfSide = lengthOfSide
    }
}

var square2 = ObservableSquare(lengthOfSide: 10)
square2.lengthOfSide = 60

