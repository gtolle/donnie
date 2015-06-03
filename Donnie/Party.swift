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
    
    init(name: String, members: [Person]) {
        self.name = name;
        self.members = members;
    }
    
    func membersFullNames() -> [String] {
        return members.map( { person in "\(person.createFullName())" } )
    }
}