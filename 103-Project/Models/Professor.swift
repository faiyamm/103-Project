//
//  Professor.swift
//  103-Project
//
//  Created by Fai on 13/12/25.
//

class Professor {
    var firstName: String
    var lastName: String
    var phoneNumber: String // 123-456-789, could do Int i just don't want to
    
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }
}
