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
struct Amulet {
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
        self.category = AmuletCategory.init(from: category) ?? AmuletCategory.coin //AmuletCategory.init(rawValue:...)
    }
}

extension Amulet: Hashable {
    static func == (lhs: Amulet, rhs: Amulet) -> Bool {

        return lhs.name == rhs.name && lhs.year == rhs.year
            && lhs.temple == rhs.temple  //ชื่อ และปี และวัดต้องตรงกัน
    }
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
        return amulets.contains(newAmulet)
        //        return amulets.contains { $0 == newAmulet}
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
    category: "พระผง")
var amulet2 = Amulet(
    name: "พระกริ่งวัดสุทัศน์", year: 2470, temple: "วัดสุทัศน์", price: 40000,
    category: "พระกริ่ง")

store.addAmulet(amulet1)
store.addAmulet(amulet2)
store.addAmulet(amulet1)  // ลองเพิ่มซ้ำ

// ลอง ไม่ remove & ไม่ add เข้าไปใหม่
// ลอง add ใหม่แบบไม่ remove ก่อน
amulet2.price = 400000
store.amulets.remove(amulet2)
store.addAmulet(amulet2)

if let topAmulet = store.mostExpensiveAmulet() {
    print("💎 Top Amulet: \(topAmulet.name) ราคา \(topAmulet.price) บาท")
} else {
    print("No amulets found.")
}

let expensiveAmulets = store.filterExpensiveAmulets(minPrice: 10000)
print("🧮 Expensive Amulets (>10,000): \(expensiveAmulets.count) found")
print("✨ All amulet in my collection")
expensiveAmulets.forEach { a in
    print(a)
}

print("🔍 Expensive amulets from วัดระฆัง")
for a in store.amulets where a.temple == "วัดระฆัง" && a.price > 30000 {
    print(a)
}


