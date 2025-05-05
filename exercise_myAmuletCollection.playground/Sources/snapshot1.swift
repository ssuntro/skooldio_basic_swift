//
//  snapshot1.swift
//  
//
//  Created by Siroratt Suntronsuk on 5/5/2568 BE.
//

import Foundation




enum AmuletCategory {
// TODO: สร้าง enum AmuletCategory ที่เก็บหมวดหมู่พระเครื่องโดยรองรับเเค่ 3 หมวดหมู่เท่านั้นคือ coin=เหรียญ, powder=พระผง, statue=พระกริ่ง
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
// TODO: สร้าง struct Amulet เพื่อเก็บพระเครื่อง 1 ชิ้น
    let category: AmuletCategory
    init(name: String, year: Int, temple: String, price: Double, category: String) {
        self.name = name
        self.year = year
        self.temple = temple
        self.price = price
        self.category = // TODO: สร้าง enum instance ด้วยฟังก์ชัน AmuletCategory.init(from:...) หากสร้าง enum instance ไม่ได้ให้ใช้ default เป็น AmuletCategory.coin
    }
}

