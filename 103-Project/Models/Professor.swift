//
//  Professor.swift
//  103-Project
//
//  Created by Fai on 13/12/25.
//

import Foundation

class Professor: Identifiable, Comparable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: String // 123-456-789, could do Int i just don't want to
    
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }
    
    func info() -> String {
        return "\(firstName) \(lastName), \(phoneNumber)"
    }
    
    static func < (lhs: Professor, rhs: Professor) -> Bool {
        return lhs.firstName < rhs.firstName || (lhs.firstName == rhs.firstName && lhs.lastName < rhs.lastName)
    }
    
    static func == (lhs: Professor, rhs: Professor) -> Bool {
        return lhs.id == rhs.id
    }
}
