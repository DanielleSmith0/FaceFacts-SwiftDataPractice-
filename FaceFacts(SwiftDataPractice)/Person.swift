//
//  Person.swift
//  FaceFacts(SwiftDataPractice)
//
//  Created by Danielle Smith on 4/12/24.
//

import Foundation
import SwiftData

@Model
class Person {
    var name: String
    var emailAddress: String
    var details: String
    
    init(name: String, emailAddress: String, details: String) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
    }
}
