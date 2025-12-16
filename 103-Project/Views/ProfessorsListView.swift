//
//  ProfessorsListView.swift
//  103-Project
//
//  Created by Fai on 15/12/25.
//

import SwiftUI

struct ProfessorsListView: View {
    @State private var addFirstName: String = ""
    @State private var addLastName: String = ""
    @State private var addPhoneNumber: String = ""
    
    @State private var professors: [Professor] = [
        Professor(firstName: "Sofia", lastName: "Perez", phoneNumber: "123-456-789"),
        Professor(firstName: "Joseph", lastName: "Smith", phoneNumber: "231-465-897"),
        Professor(firstName: "Marie", lastName: "Claire", phoneNumber: "321-654-987")
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                // header
//                HStack {
//                    Text("Total Professors:")
//                        .font(.title3)
//                        .bold()
//                    Text("\(professors.count)")
//                        .font(.title3)
//                        .bold()
//                        .foregroundStyle(.yellow)
//                }
//                .padding(.top, 20)
//                .padding(.bottom, 10)
                
                // list
                List(professors) { professor in
                    VStack(alignment: .leading) {
                        Text("\(professor.firstName) \(professor.lastName)")
                            .font(.title3)
                            .foregroundColor(.primary)
                        Text("Phone: \(professor.phoneNumber)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                
                // inputs
                VStack {
                    
                    HStack {
                        TextField("First Name", text: $addFirstName)
                            .autocorrectionDisabled(true)
                            .textFieldStyle(.plain)
                            .padding(.horizontal, 15)
                            .frame(height: 50)
                            .background(Color(.secondarySystemBackground))
                            .foregroundColor(.primary)
                            .cornerRadius(25)
                            .frame(maxWidth: .infinity)
                        TextField("Last Name", text: $addLastName)
                            .autocorrectionDisabled(true)
                            .textFieldStyle(.plain)
                            .padding(.horizontal, 15)
                            .frame(height: 50)
                            .background(Color(.secondarySystemBackground))
                            .foregroundColor(.primary)
                            .cornerRadius(25)
                            .frame(maxWidth: .infinity)
                    } 
                    HStack {
                        TextField("Phone Number", text: $addPhoneNumber)
                            .autocorrectionDisabled(true)
                            .textFieldStyle(.plain)
                            .padding(.horizontal, 15)
                            .frame(height: 50)
                            .background(Color(.secondarySystemBackground))
                            .foregroundColor(.primary)
                            .cornerRadius(25)
                            .frame(maxWidth: .infinity)
                        Button(action: addNewProf) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding(15)
                                .background(Color.blue)
                                .cornerRadius(99)
                        }
                        .frame(width: 50, height: 50)
                        .disabled(isFieldEmpty)
                        .opacity(isFieldEmpty ? 0.3 : 1.0)
                    }
                    
                } // end inputs
                .padding()
                .background(Color(.systemBackground))
            } // end nv
            
            .navigationBarTitle("Professors Directory", displayMode: .inline)
            
            .toolbar {
                Menu {
                    Button("Sort A-Z") {
                        @MainActor in
                        professors.sort(by: <)
                    }
                    Button("Sort Z-A") {
                        @MainActor in
                        professors.sort(by: >)
                    }
                } // end menu
                label : {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                        .foregroundColor(.primary)
                }
            } //end toolbar
        }
        
        
    }
    
    // bool to check if all fields are filled
    var isFieldEmpty: Bool {
        return addFirstName.isEmpty || addLastName.isEmpty || addPhoneNumber.isEmpty
    }
    
    func addNewProf() {
        let cleanFN = addFirstName.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanLN = addLastName.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanPN = addPhoneNumber.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let newProf = Professor(firstName: cleanFN, lastName: cleanLN, phoneNumber: cleanPN)
        
        professors.append(newProf)
        
        addFirstName = ""
        addLastName = ""
        addPhoneNumber = ""
    }
}

#Preview {
    ProfessorsListView()
}
