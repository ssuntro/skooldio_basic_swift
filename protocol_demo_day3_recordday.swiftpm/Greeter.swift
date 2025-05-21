//
//  Greeter.swift
//  protocol_demo
//
//  Created by Siroratt Suntronsuk on 11/5/2568 BE.
//


////MARK: Protocol extension
//protocol Greeter {
//    func greet()
//}
//
//// Default implementation using a protocol extension
//extension Greeter {
//    func greet() {
//        print("Hello from protocol extension!")
//    }
//}
//
//// Struct conforming to Greeter but NOT overriding greet()
//struct DefaultGreeter: Greeter {
//    // Uses default implementation
//}
//
//// Struct overriding greet() with custom behavior
//struct CustomGreeter: Greeter {
//    func greet() {
//        print("Hi from CustomGreeter!")
//    }
//}



////MARK: what's data type can conform protocol?
//protocol Identifiable {
//    var id: String { get }
//}
//struct User: Identifiable {
//    var id: String //absent can lead to compiler error
//    var name: String
//}
//class Product: Identifiable {
//    var id: String
//    var price: Double
//
//    init(id: String, price: Double) {
//        self.id = id
//        self.price = price
//    }
//}
//enum Status: Identifiable {
//    case active, inactive
//
//    var id: String {
//        switch self {
//        case .active: return "active"
//        case .inactive: return "inactive"
//        }
//    }
//}

////MARK: variable in protocol
//protocol AA {
//var id: String { get } //Must be readable (can get the value). can be both let or var
//}
//
//struct Book: AA {
//    private(set) var id: String  // conforms!
//    
//    mutating func zz() {
//        id = "123"
//    }
//}
//
//struct User: AA {
//    let id: String
//// OK! 'let' is fine because only 'get' is needed
//}






////MARK: variable in protocol
//protocol BB {
//    var id: String { get set }
//}
//
//struct User: BB {
//    var id: String  // Must be 'var' because 'set' is required
//}
//
//struct Person: BB {
//    internal(set) var id: String
//}
//
//struct Admin: BB {
//    private var _id = "admin-id"
//    
//    internal var id: String {
//        get {
//            return _id
//        }
//        set {
//            _id = newValue
//        }
//    }
//}





//MARK: varaible in protocol
////example#1
//// ❌ ERROR: Protocol requires 'id' to be mutable
//protocol CC {
//    var id: String { get set }
//}
//
//struct Guest: CC {
//    var id: String
//    
//    var id: String {
//        return "guest-id"  // Only 'get', no 'set'
//    }
//}

////example#2
//protocol CCC {
//    var id: String { get }
//}
//
//struct Guest: CCC {
//    var id: String {
//        return "guest-id"  // Only 'get', no 'set'  ❌ ERROR
//    }
//}


//MARK: function in swift
protocol Greeter {
    func greet(name: String)
    func greet() -> String
    mutating func updateName(to newName: String)
    func fetchData() async
    func loadData() throws
}





