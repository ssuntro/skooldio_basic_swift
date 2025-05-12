//
//  protocolTest.swift
//  test
//
//  Created by Siroratt Suntronsuk on 10/5/2568 BE.
//


//MARK: protocol extension
protocol Greeter {
    func greet()
}
extension Greeter {
    func greet() {
        print("Hello from protocol extension!")
    }
}

// Struct conforming to Greeter but NOT overriding greet()
struct DefaultGreeter: Greeter {
    // Uses default implementation
}

// Struct overriding greet() with custom behavior
struct CustomGreeter: Greeter {
    func greet() {
        print("Hi from CustomGreeter!")
    }
}



































//import UIKit
//class MyView: UIView {
//    override func isEqual(_ object: Any?) -> Bool {
//        guard let other = object as? MyView else { return false }
//        return self.tag == other.tag
//    }
//}
//            let view1 = MyView()
//            view1.tag = 100
//
//            let view2 = MyView()
//            view2.tag = 100
//
//            if view1 == view2 {
//                print("Equal by custom rule!") // ✅ This will execute
//            }
