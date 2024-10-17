struct ToyCar {
    var color: String
}

var myCar = ToyCar(color: "blue")
var friendsCar = myCar // Copying the value
friendsCar.color = "red"


class ToyCarClass {
    var color: String
    
    init(color: String) {
        self.color = color
    }
}

var myCarClass = ToyCarClass(color: "blue")
var friendsCarClass = myCarClass // Referencing the same object
friendsCarClass.color = "red"

print(myCarClass.color) // Output: red
print(friendsCarClass.color) // Output: red






func greet(name: String) {
    print("Hello, \(name)!")
}
let greeter = greet // Assign the function to a variable
let anotherGreeter = greeter // Another variable referencing the same function

greeter("Alice") // Hello, Alice!
anotherGreeter("Bob") // Output: Hello, Bob!




// The `Person` instance is not deinitialized because of the strong reference cycle
class Person {
    let name: String
    var greeting: (() -> Void)?

    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

func createMemoryLeak() {
    let person = Person(name: "John")
    person.greeting = {
        print("Hello, my name is \(person.name)")
    }
}

createMemoryLeak()

