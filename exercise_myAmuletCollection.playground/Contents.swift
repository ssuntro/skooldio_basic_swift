import Foundation
////
///
///


// 1. Enum for Category
enum AmuletCategory: String {
    case coin = "เหรียญ"
    case powder = "พระผง"
    case statue = "พระกริ่ง"
}

extension AmuletCategory {
    //test - guard let & 7-type of initiatiser
    init?(from raw: String) {
        guard let a = AmuletCategory(rawValue: raw) else { return nil }
        self = a
    }
    //test - computed properties in enum
    var icon: String {
        switch self {
        case .coin: return "🐛"
        case .powder: return "ℹ️"
        case .statue: return "⚠️"
        }
    }

}

// 2. Struct for Amulet
// test - var/let
struct Amulet: Hashable {
    let name: String
    let year: Int
    let temple: String
    var price: Double
    let category: AmuletCategory
}

// 3. Class for Amulet Storage
struct AmuletStore {

//    var amulets: [Amulet] = []
    var amulets: Set<Amulet> = []


    // 4. Function to add Amulet
    mutating func addAmulet(_ amulet: Amulet) {
        if isDuplicate(amulet) {
            print("⚠️ This amulet already exists.")
        } else {
            amulets.insert(amulet)
            print("✅ Amulet added successfully.")
        }
    }

    // 5. Function to check duplicate
    func isDuplicate(_ newAmulet: Amulet) -> Bool {
        for amulet in amulets {
            if amulet.name == newAmulet.name && amulet.year == newAmulet.year
                && amulet.temple == newAmulet.temple
            {
                return true
            }
        }
        return false
    }

    // 6. Function to find the most expensive Amulet
    func mostExpensiveAmulet() -> Amulet? {
        return amulets.max { $0.price < $1.price }
    }

    // 7. Bonus: Closure to filter expensive amulets
    func filterExpensiveAmulets(minPrice: Double) -> [Amulet] {
        return amulets.filter { $0.price > minPrice }
    }
}

// ---
// 📋 Usage Example:

var store = AmuletStore()

let amulet1 = Amulet(
    name: "พระสมเด็จวัดระฆัง", year: 2400, temple: "วัดระฆัง", price: 50000,
    category: .powder)
let amulet2 = Amulet(
    name: "พระกริ่งวัดสุทัศน์", year: 2470, temple: "วัดสุทัศน์", price: 40000,
    category: .statue)

store.addAmulet(amulet1)
store.addAmulet(amulet2)
store.addAmulet(amulet1)  // ลองเพิ่มซ้ำ

if let topAmulet = store.mostExpensiveAmulet() {
    print("💎 Top Amulet: \(topAmulet.name) ราคา \(topAmulet.price) บาท")
} else {
    print("No amulets found.")
}

let expensiveAmulets = store.filterExpensiveAmulets(minPrice: 10000)
print("🧮 Expensive Amulets (>10,000): \(expensiveAmulets.count) found")





