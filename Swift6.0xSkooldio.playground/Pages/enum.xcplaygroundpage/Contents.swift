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


// ------------------------------------------------------
//why protocol?
// 1. Polymorphism without inheritance
protocol PinRule {
func evaluate() -> Bool
}
class DuplicateDigit: PinRule {
    func evaluate() -> Bool {
        return true
    }
}
enum SequenceDigit: PinRule {
    case ascending
    func evaluate() -> Bool {
        return false
    }
    init() { self = .ascending }
}
struct LessThanSixDigit: PinRule {
    func evaluate() -> Bool {
        return true
    }
}
let rules: [PinRule] = [DuplicateDigit(), SequenceDigit(), LessThanSixDigit()]
rules.reduce(true) { partialResult, rule  in
    rule.evaluate()
}
func isValidPin(with rule: PinRule) {
//    ... สนใจเฉพาะ rule.evaluate()
}


// 2. Ease to double
struct PinScreen {
    init(rule: PinRule) {
        // Double inject ง่าย ทำให้test ง่าย maintain ง่าย
    }
}
class SpyPinRule: PinRule {
    var numberOfCalled = 0
    func evaluate() -> Bool {
        numberOfCalled = numberOfCalled + 1
        return true
    }
}
let spyRule = SpyPinRule()
PinScreen(rule: spyRule)
spyRule.numberOfCalled

