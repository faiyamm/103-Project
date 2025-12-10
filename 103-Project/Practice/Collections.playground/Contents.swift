import UIKit

// ---> Array
print("---- Array ----")
print("""
    These are the characteristics of an Array:
    1. It's ordered.
    2. Each item has a position (index).
    3. Supports duplicates.
""")

// Define an array
var studentAge: [Int] = [1, 2, 3, 4, 5]
var studentName: [String] = ["Alan", "Bianca", "Carl", "Daniela", "Erwin"]

print("List of names: \(studentName)")
print("The age of the first student is: \(studentAge[0])")

// --> Set
print("---- Set ----")
print("""
    These are the characteristics of a Set:
    1. It's unordered.
    2. Items don't have a position (index).
    3. Doesn't support duplicates.
""")

// Define a set
var studentGrade: Set<Int> = [100, 60, 87, 71, 92]

print("The grades of the students are: \(studentGrade)")

// ---> Dictionary
print("---- Dictionary ----")
print("""
    These are the characteristics of a Dictionary:
    1. It's unordered too.
    2. Collection of key-value pairs.
    3. Each key must be unique but the value can be duplicated.
""")

// Define a dictionary
var studentDictionary: [String:Int] = [
    "Fai": 100,
    "Sofia": 100,
    "Vivian": 95
]

print("The grades of the students are: \(studentDictionary)")

// -----> Mini challenge 1:

// Statement 1
var studentNames: [String] = ["Alan", "John", "Carl"]

// Statement 2
var studentIDs: [Int:String] = [
    101: "Fai",
    102: "Jay",
    103: "John"
]

// statement 3
var studentGrades: [String:String] = [
    "Mike":"A",
    "Sam":"C",
    "Lisa": "B"
]

// statament 4
var courseNames: [String] = ["Math", "History", "Biology"]

// -----> Mini challenge 2:
var bookTitle: [String] = ["Dune", "Book 2", "Book 3"]

var bookIsbn: Set<Int> = [734836573, 837483578, 717357247, 91849814, 837826582]

var bookPrice: [String:Double] = [
    "Dune": 22.0,
    "Book 2": 12.99,
    "Book 3": 8.99
]


