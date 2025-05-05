//
//  snapshot2.swift
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
        // TODO: สร้าง logic เพื่อเปรียบเทียบว่า 2 Amulet instances คือพระชิ้นเดียวกัน ชิ้นเดียวกันพิจารณาจาก ชื่อ และปี และวัดต้องตรงกัน
    }
}



assert(Amulet(
    name: "พระสมเด็จวัดระฆัง", year: 2400, temple: "วัดระฆัง", price: 10,
    category: "พระกริ่ง") == Amulet(
    name: "พระสมเด็จวัดระฆัง", year: 2400, temple: "วัดระฆัง", price: 990000,
    category: "พระกริ่ง"))
