// plain enum
enum Direction {
    case north, south, east, west

    func toString() -> String {
        switch self {
        case .east:
            return "east"
        case .north:
            return "north"
        case .south:
            return "south"
        case .west:
            return "west"
        }
    }
}
// Direction.east.rawValue
// Direction.init(rawValue: "east")


// enum raw value
enum Planet: String {
    case mercury , venus, earth, mars
}
print(Planet.mercury.rawValue)
