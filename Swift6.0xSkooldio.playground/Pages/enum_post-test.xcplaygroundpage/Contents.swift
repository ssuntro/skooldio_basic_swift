enum Weather {
    case sunny
    case cloudy
    case rainy
    case windy

    func description() -> String {
        switch self {
        case .sunny:
            return "It's a sunny day"
        case .cloudy:
          return "It's cloudy today"
        case .rainy:
          return "It's raining"
        case .windy:
          return "It's windy outside"
        }
    }

    func emoji() -> String {
        switch self {
        case .sunny:
           return "☀️"
        case .cloudy:
       return "☁️"
        case .rainy:
           return "🌧️"
        case .windy:
        return "💨"
        }
    }
}
let today = Weather.sunny
print(today.description()) // "It's a sunny day"
print(today.emoji()) // "☀️"


