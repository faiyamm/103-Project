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
