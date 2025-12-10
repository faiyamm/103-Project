import UIKit

var studentNames: [String] = ["Mike", "Bianca", "Anna", "Charles", "Julie"]

var studentGrades: [String: [Int]] = [
    "Mike": [74, 89, 51, 70],
    "Bianca": [91, 94, 86, 96],
    "Anna": [95, 64, 80, 92],
    "Charles": [67, 60, 73, 84],
    "Julie": [99, 88, 77, 66]
]

func calcAvgGrade(grades: [Int]) -> Double {
    return Double(grades.reduce(0, +)) / Double(grades.count)
}

for name in studentNames {
    let allGrades = studentGrades[name]
    let avgGrade = calcAvgGrade(grades: allGrades!)

    print("\nStudent Name: \(name)")
    print("Grades: \(allGrades!)")
    print("Their Average grade is \(avgGrade)")
}
