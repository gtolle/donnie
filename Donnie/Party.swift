//
//  Party.swift
//  Donnie
//
//  Created by Donnie Wang on 6/3/15.
//  Copyright (c) 2015 Donnie Wang. All rights reserved.
//

import Foundation

class Party {
    var name: String
    var members: [Person]
    
    // Define a new computed property on Party called "roster" that returns a comma-separated list of the party members' names as a string along with the name of the party, like this: 
    // The Awesome Party: Jane Smith, Joan Smith
    var roster: String {
        return "\(self.name): " + ", ".join(membersFullNames())
    }
    
    var dollars: Int {
        return memberDollars()
    }
    
    init(name: String, members: [Person]) {
        self.name = name;
        self.members = members;
    }
    
    func membersFullNames() -> [String] {
        return members.map( { person in "\(person.createFullName())" } )
    }
    
    func memberDollars() -> Int {
        var sum = 0
        members.map( { person in sum += person.dollars } )
        return sum
    }
    
    func richList() -> [String] {
        var filteredArray: [String] = []
        for person in members {
            if (person.dollars >= 1000) {
                filteredArray.append("\(person.createFullName()): \(person.dollars))")
            } else {
                // Do nothing
            }
        }
        return filteredArray
        
//        var filteredArray : [Person] = []
//        filteredArray = members.filter { $0 >= 1000 }
//        return filteredArray
    }
    
//    func poorestFirst() -> [String] {
//        var tempArray: [String] = []
//        tempArray = members.map( { person in "\(person.createFullName())" } )
//        temparray
//    }
}