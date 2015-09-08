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

var square2 = ObservableSquare(lengthOfSide: 10)    // initialize square object
square2.lengthOfSide = 50                           // change the length of side 
