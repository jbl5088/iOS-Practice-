enum Color {
    case Red
    case Orange
    case Yellow
    case Green
    case Blue
    case Indigo
    case Violet
}

var color = Color.Red

switch color {
case .Red:
    println("color is red")
case .Violet:
    println("color is violet")
default:
    println("color is neither red nor violet")
}

