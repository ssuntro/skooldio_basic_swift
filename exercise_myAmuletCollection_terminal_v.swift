import Foundation

// 1. Enum for Category
enum AmuletCategory: String {
    case coin = "เหรียญ"
    case powder = "พระผง"
    case statue = "พระกริ่ง"
}

extension AmuletCategory {
    init?(from raw: String) {
        guard let a = AmuletCategory(rawValue: raw) else { return nil }
        self = a
    }

    var icon: String {
        switch self {
        case .coin: return "🐛"
        case .powder: return "ℹ️"
        case .statue: return "⚠️"
        }
    }
}

// 2. Struct for Amulet
struct Amulet: Hashable {
    let name: String
    let year: Int
    let temple: String
    var price: Double
    let category: AmuletCategory

    init(name: String, year: Int, temple: String, price: Double, category: String) {
        self.name = name
        self.year = year
        self.temple = temple
        self.price = price
        self.category = AmuletCategory(from: category) ?? .coin
    }

    static func == (lhs: Amulet, rhs: Amulet) -> Bool {
        return lhs.name == rhs.name && lhs.year == rhs.year && lhs.temple == rhs.temple
    }
}

// 3. Storage
struct AmuletStore {
    var amulets: Set<Amulet> = []

    mutating func addAmulet(_ amulet: Amulet) {
        if amulets.contains(amulet) {
            print("⚠️ This amulet already exists.")
        } else {
            amulets.insert(amulet)
            print("✅ Amulet added successfully.")
        }
    }

    func mostExpensiveAmulet() -> Amulet? {
        return amulets.max(by: { $0.price < $1.price })
    }

    func filterExpensiveAmulets(minPrice: Double) -> [Amulet] {
        return amulets.filter { $0.price > minPrice }
    }

    func listAll() {
        if amulets.isEmpty {
            print("📭 No amulets stored.")
        } else {
            for amulet in amulets {
                print("- \(amulet.category.icon) \(amulet.name), \(amulet.year), \(amulet.temple), ฿\(amulet.price), [\(amulet.category.rawValue)]")
            }
        }
    }
}

// 4. Main Program
func readLineWithPrompt(_ prompt: String) -> String {
    print(prompt, terminator: ": ")
    return readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
}

var store = AmuletStore()

while true {
    print("""
    \n🔮 Amulet Manager
    1. Add Amulet
    2. Show All Amulets
    3. Show Most Expensive Amulet
    4. Filter by Price
    5. Exit
    """)

    let choice = readLineWithPrompt("Choose option (1-5)")
    switch choice {
    case "1":
        let name = readLineWithPrompt("Enter name")
        let year = Int(readLineWithPrompt("Enter year")) ?? 0
        let temple = readLineWithPrompt("Enter temple")
        let price = Double(readLineWithPrompt("Enter price")) ?? 0.0
        let category = readLineWithPrompt("Enter category (เหรียญ/พระผง/พระกริ่ง)")
        let amulet = Amulet(name: name, year: year, temple: temple, price: price, category: category)
        store.addAmulet(amulet)

    case "2":
        store.listAll()

    case "3":
        if let expensive = store.mostExpensiveAmulet() {
            print("💎 Most expensive: \(expensive.name), ฿\(expensive.price)")
        } else {
            print("📭 No data.")
        }

    case "4":
        let min = Double(readLineWithPrompt("Enter minimum price")) ?? 0.0
        let filtered = store.filterExpensiveAmulets(minPrice: min)
        if filtered.isEmpty {
            print("📭 No amulets above ฿\(min)")
        } else {
            for a in filtered {
                print("- \(a.name), ฿\(a.price)")
            }
        }

    case "5":
        print("👋 Bye!")
        exit(0)

    default:
        print("❌ Invalid choice.")
    }
}

