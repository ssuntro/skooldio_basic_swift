//
//  shapshot3.swift
//  
//
//  Created by Siroratt Suntronsuk on 5/5/2568 BE.
//

import Foundation

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


struct AmuletStore {

    var amulets: Set<Amulet> = []

    // TODO: สร้าง func addAmulet(_ amulet: Amulet) เพื่อเพิ่มพระเครื่องลงตัวแปร amulets
    func addAmulet(_ amulet: Amulet) {
        if isDuplicate(amulet) {
            print("⚠️ This amulet already exists.")
        } else {
            amulets.insert(amulet)
            print("✅ Amulet added successfully.")
        }
    }

    // TODO: สร้างฟังก์ชัน isDuplicate(_ newAmulet: Amulet) -> Bool เพื่อตรวจสอบพระเครื่องซ้ำโดยใช้ build-in function ของ set data type, contains(...)
    // TODO: สร้างฟังก์ชัน mostExpensiveAmulet() -> Amulet? เพื่อหาพระเครื่องที่ราคาเเพงที่สุดใน collection amulets โดยฟังก์ชันต้องมีเพียง 1 line of code
    // TODO: สร้างฟังก์ชัน filterExpensiveAmulets(minPrice: Double) -> [Amulet] เพื่อหาพระเครื่องที่ราคามากกว่า minPrice ทั้งหมด โดยฟังก์ชันต้องมีเพียง 1 line of code
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



