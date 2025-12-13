import UIKit

class Pet {
    // attributes
    var name: String
    var breed: String
    var age: Int
    var owner: String
    
    // initializer / constructor
    init(name: String, breed: String, age: Int, owner: String) {
        self.name = name
        self.breed = breed
        self.age = age
        self.owner = owner
    }
}

// 1. How to create an obj using a class
let petObj = Pet(name: "Benny", breed: "Shih Tzu", age: 5, owner: "John")

// 2. How to access to an attribute of and obj

petObj.name
petObj.owner

print("The pet name is: ", petObj.name)
print("Te pet owner is: ", petObj.owner)

// 3. How to update values of an attribute
// Access the attribute you want to modify and assign the new value
petObj.age = 4
print("The pet age is: ", petObj.age)
