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
    func genderSubjectPronoun() -> String {
        var result = ""
        if (gender == "male") {
            result = "he"
        } else if (gender == "female") {
            result = "she"
        } else {
            result = "they"
        }
        return result
    }
    
    func genderObjectPronoun() -> String {
        var result = ""
        if (gender == "male") {
            result = "him"
        } else if (gender == "female") {
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
        return "\(genderSubjectPronoun().capitalizedString) is \(title) \(self.lastName). He lives at \(self.address!). Call him at \(self.phoneNumber!)."
    }
}