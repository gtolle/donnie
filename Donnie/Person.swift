//
//  Person.swift
//  Donnie
//
//  Created by Donnie Wang on 5/17/15.
//  Copyright (c) 2015 Donnie Wang. All rights reserved.
//

import Foundation

class Person : Printable {
    var firstName: String
    var lastName: String
    var email: String
    var address: String?
    var phoneNumber: String?
    var gender: String?
    var title: String?
    var honors: [String]
    var dollars: Int
    
    var genderSubjectPronoun: String {
        if (self.gender == "male") {
            return "he"
        } else if (self.gender == "female") {
            return "she"
        } else {
            return "they"
        }
    }
    
    var genderObjectPronoun: String {
        if (self.gender == "male") {
            return "him"
        } else if (self.gender == "female") {
            return "her"
        } else {
            return "them"
        }
    }
    
    var description: String {
        return "Person(\(self.firstName), \(self.lastName), \(self.email), \(self.address), \(self.gender), \(self.title)"
    }
    
    var honorList: String {
        return ", ".join(self.honors)
    }
    
    var fullTitle: String {
        if (self.title != nil) {
            return "\(self.title!) \(self.firstName) \(self.lastName), \(self.honorList)."
        } else {
            return "\(self.firstName) \(self.lastName), \(self.honorList)."
        }
    }
    
    init(firstName: String, lastName: String, email: String, honors: [String], dollars: Int) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.honors = honors;
        self.dollars = dollars;
    }
    
    func createFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
    
    func createGreeting() -> String {
        if (self.title != nil) {
            return "Hello, I am \(self.title!) \(self.lastName)"
        } else {
            return "Hello, I am \(self.firstName) \(self.lastName)"
        }
        
    }
    
    func createIntroduction() -> String {
        return "\(self.createGreeting()). I live at \(self.address!). My number is \(self.phoneNumber!)."
    }
    
    func thirdPartyIntroduction() -> String {
        if (self.title != nil) {
            if (self.address != nil && self.phoneNumber != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.title!) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Call \(self.genderObjectPronoun) at \(self.phoneNumber!)."
            } else if (self.address != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.title!) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Phone number unknown."
            } else if (self.phoneNumber != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.title!) \(self.lastName). Call \(self.genderObjectPronoun) at \(self.phoneNumber!). Address unknown."
            } else {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.title!) \(self.lastName). Address and phone number are unknown."
            }
        } else {
            if (self.address != nil && self.phoneNumber != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.firstName) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Call \(self.genderObjectPronoun) at \(self.phoneNumber!)."
            } else if (self.address != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.firstName) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Phone number unknown."
            } else if (self.phoneNumber != nil) {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.firstName) \(self.lastName). Call \(self.genderObjectPronoun) at \(self.phoneNumber!). Address unknown."
            } else {
                return "\(self.genderSubjectPronoun.capitalizedString) is \(self.firstName) \(self.lastName). Address and phone number are unknown."
            }
        }
    }
}