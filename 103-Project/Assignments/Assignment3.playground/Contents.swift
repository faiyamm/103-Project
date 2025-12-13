import UIKit

class Student {
    var studentName: String
    var studentAge: Int
    var studentGrades: [Int]
    
    init(studentName: String, studentAge: Int, studentGrades: [Int]) {
        self.studentName = studentName
        self.studentAge = studentAge
        self.studentGrades  = studentGrades
    }
    
    func calcAvgGrade() -> Double {
        let sumOfGrades = studentGrades.reduce(0, +)
        return Double(sumOfGrades) / Double(studentGrades.count)
    }

    func checkGrade() -> String {
        let avgGrade = calcAvgGrade()
        return avgGrade >= 60.0 ? "Passed" : "Failed"
    }
}

let student1 = Student(studentName: "Sofia", studentAge: 23, studentGrades: [92, 90, 85])
let student2 = Student(studentName: "Fai", studentAge: 22, studentGrades: [61, 66, 12])

print("Student: \(student1.studentName)")
print("Average: \(String(format: "%.2f", student1.calcAvgGrade()))")
print("Status: \(student1.checkGrade())")
print("\n")

print("Student: \(student2.studentName)")
print("Average: \(String(format: "%.2f", student2.calcAvgGrade()))")
print("Status: \(student2.checkGrade())")
