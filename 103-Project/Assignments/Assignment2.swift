//
//  Assignment2.swift
//  103-Project
//
//  Created by Fai on 10/12/25.
//

import SwiftUI

struct Assignment2: View {
    @State private var studentAvg: [String: Double] = [:]
    @State private var studentNames: String = ""
    @State private var studentGrades: String = ""
    
    @State private var newStudentName: String = ""
    @State private var newStudentGrade: String = ""
    
    @State private var sortGrades: Bool = true
    @State private var studentList: [String:Int] = [
        "Mike": 85,
        "Bianca": 92,
        "Anna": 73,
        "Charles": 89,
        "Julie": 67
    ]
    
    var classAvg: Double {
        studentList.reduce(0.0) { $0 + Double($1.value) } / Double(studentList.count)
    }
    
    var sortStudentGrades: [(String, Int)] {
        let studentArray = studentList.map { ($0.key, $0.value) }
        if sortGrades {
            return studentArray.sorted(by: { $0.1 > $1.1 })
        } else {
            return studentArray.sorted(by: { $0.1 < $1.1 })
        }
    }
    
    func addNewStudent() {
        if newStudentName.isEmpty || newStudentGrade.isEmpty { return }
        
        if let existingGrade = studentList[newStudentName] {
            studentList[newStudentName] = max(existingGrade, Int(newStudentGrade) ?? 0)
        } else {
            studentList[newStudentName] = Int(newStudentGrade) ?? 0
        }
        
        newStudentName = ""
        newStudentGrade = ""
    }
        
    var body: some View {
        NavigationStack {
            
            VStack {
                HStack {
                    Text("Course grade average:")
                        .font(.title3)
                        .bold()
                    Text("\(classAvg, specifier: "%.2f")")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.blue)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                List(sortStudentGrades, id: \.0) { name, grade in
                    HStack {
                        Text(name)
                            .foregroundColor(.primary)
                        Spacer()
                        Text("\(grade)")
                            .foregroundColor(.secondary)
                    }
                }
                .listStyle(.plain)
                
                HStack {
                    TextField("Name", text: $newStudentName)
                        .textFieldStyle(.plain)
                        .padding(.horizontal, 15)
                        .frame(height: 50)
                        .background(Color(.secondarySystemBackground))
                        .foregroundColor(.primary)
                        .cornerRadius(25)
                        .frame(maxWidth: .infinity)
                    TextField("Grade", text: $newStudentGrade)
                        .textFieldStyle(.plain)
                        .padding(.horizontal, 15)
                        .frame(width: 80, height: 50)
                        .background(Color(.secondarySystemBackground))
                        .foregroundColor(.primary)
                        .cornerRadius(25)
                        .keyboardType(.numberPad)
                    Button(action: addNewStudent) {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.black)
                            .padding(15)
                            .background(Color.white)
                            .cornerRadius(99)
                    }
                    .frame(width: 50, height: 50)
                }
                .padding()
                .background(Color(.systemBackground))
            }
            
            .navigationBarTitle("Grading System", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort Highest to Lowest") {
                        sortGrades = true
                    }
                    Button("Sort Lowest to Highest") {
                        sortGrades = false
                    }
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                        .foregroundColor(.primary)
                }
            }
        }
    }
}

#Preview {
    Assignment2()
}
