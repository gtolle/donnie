//
//  Person.swift
//  Donnie
//
//  Created by Donnie Wang on 5/17/15.
//  Copyright (c) 2015 Donnie Wang. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var email: String
    var address: String?
    var phoneNumber: String?
    var gender: String?
    
    var genderSubjectPronoun: String {
        var result = ""
        if (self.gender == "male") {
            result = "he"
        } else if (self.gender == "female") {
            result = "she"
        } else {
            result = "they"
        }
        return result
    }
    
    var genderObjectPronoun: String {
        var result = ""
        if (self.gender == "male") {
            result = "him"
        } else if (self.gender == "female") {
            result = "her"
        } else {
            result = "them"
        }
        return result
    }
    
    init(a: String, b: String, c: String) {
        self.firstName = a;
        self.lastName = b;
        self.email = c;
    }
    
    func createGreeting(title: String) -> String {
        return "Hello, I am \(title) \(self.lastName)"
    }
    
    func createIntroduction(title: String) -> String {
        return "\(createGreeting(title)). I live at \(self.address!). My number is \(self.phoneNumber!)."
    }
    
    func thirdPartyIntroduction(title: String) -> String {
        var intro = ""
        if (self.address != nil && self.phoneNumber != nil) {
            intro = "\(self.genderSubjectPronoun.capitalizedString) is \(title) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Call \(self.genderObjectPronoun) at \(self.phoneNumber!)."
        } else if (self.address != nil) {
            intro = "\(self.genderSubjectPronoun.capitalizedString) is \(title) \(self.lastName). \(self.genderSubjectPronoun.capitalizedString) lives at \(self.address!). Phone number unknown."
        } else if (self.phoneNumber != nil) {
            intro = "\(self.genderSubjectPronoun.capitalizedString) is \(title) \(self.lastName). Call \(self.genderObjectPronoun) at \(self.phoneNumber!). Address unknown."
        } else {
            intro = "\(self.genderSubjectPronoun.capitalizedString) is \(title) \(self.lastName). Address and phone number are unknown."
        }
        return intro
    }
}