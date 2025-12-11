import UIKit

// create
var fruitsArray: [String] = ["Banana", "Apple", "Orange"]
var fruitsSet: Set<String> = ["Banana", "Apple", "Orange"]
var fruitsDictionary: [String:String] = [
    "Yellow": "Banana",
    "Red": "Apple",
    "Green": "Watermelon"
]

print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary: ", fruitsDictionary)

// 1. Add elements

// Array
fruitsArray.append("Mango")

// Set
fruitsSet.insert("Mango")

// Add new elem to Dictionary
fruitsDictionary["Blue"] = "Blueberry"

print("\n --- Add element ---")
print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary: ", fruitsDictionary)

// 2. Remove element
fruitsArray.remove(at: 2)
fruitsSet.remove("Orange")
fruitsDictionary.removeValue(forKey: "Green")

print("\n --- Remove element ---")
print("Array: ", fruitsArray)
print("Set: ", fruitsSet)
print("Dictionary: ", fruitsDictionary)

// 3. Search/Check Elements
print("\nThe fruit in position 1 is: ", fruitsArray[1])
print("Array contains 'Apple'?: ", fruitsArray.contains("Apple"))

print("Set contains 'Apple'? ", fruitsSet.contains("Apple"))

print("Dictionary contains 'Red'? ", fruitsDictionary.keys.contains("Red"))
print("Dictionary contains 'Apple'? ", fruitsDictionary.values.contains("Apple"))

// 4. Iterate a collection
print("\n---- Iterate an Array ----")
for fruit in fruitsArray {
    print(fruit)
}

print("\n---- Iterate a Set ----")
for fruit in fruitsSet {
    print(fruit)
}

print("\n---- Iterate a Dictionary ----")
for (color, fruit) in fruitsDictionary {
    print("The \(color) fruit is \(fruit)")
}

// 5. Sorting
print("\n---- Sorting collections ----")

print("\nArray Sorted: ", fruitsArray.sorted(by: >))

print("\nSet Sorted: ", fruitsSet.sorted(by: >))

print("\nDictionary Sorted by Value: ")
for (color, fruit) in fruitsDictionary.sorted(by: { $0.value < $1.value }) {
    print("The \(color) fruit is \(fruit)")
}
