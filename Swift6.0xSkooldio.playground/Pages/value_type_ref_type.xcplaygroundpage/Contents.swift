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
