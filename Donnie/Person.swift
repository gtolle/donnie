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
    
    init(a: String, b: String, c: String) {
        self.firstName = a;
        self.lastName = b;
        self.email = c;
    }
    
    func createGreeting(title: String) -> String {
        return "Hello, \(title) \(self.lastName)"
    }
}