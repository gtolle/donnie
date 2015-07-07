//
//  AppDelegate.swift
//  Donnie
//
//  Created by Gilman Tolle on 5/17/15.
//  Copyright (c) 2015 Donnie Wang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        var vc = ViewController()
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        self.window?.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        var redRect = UIView(frame: CGRect(x: 8, y: 32, width: 175.5, height: 175.5))
        redRect.backgroundColor = UIColor.redColor()
        
        var greenRect = UIView(frame: CGRect(x: 191.5, y: 32, width: 175.5, height: 175.5))
        greenRect.backgroundColor = UIColor.greenColor()
        
        var blueRect = UIView(frame: CGRect(x: 8, y: 215.5, width: 175.5, height: 175.5))
        blueRect.backgroundColor = UIColor.blueColor()
        
        var yellowRect = UIView(frame: CGRect(x: 191.5, y: 215.5, width: 175.5, height: 175.5))
        yellowRect.backgroundColor = UIColor.yellowColor()
        
        self.window?.addSubview(redRect)
        self.window?.addSubview(greenRect)
        self.window?.addSubview(blueRect)
        self.window?.addSubview(yellowRect)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}


// Old code from application()
//var person1 = Person(
//    firstName: "Donnie",
//    lastName: "Wang",
//    email: "donnie@test.com",
//    honors: [
//        "The First of His Name",
//        "The Asian Sensation",
//        "Father of Snapvite"
//    ],
//    dollars: 10
//)
//
//person1.address = "1 Market St. San Francisco CA 94110"
//person1.phoneNumber = "415-123-4567"
//person1.gender = "male"
//person1.title = "Maester"
//
//var person2 = Person(
//    firstName: "Gilman",
//    lastName: "Tolle",
//    email: "gilman@test.com",
//    honors: [
//        "The First of His Name",
//        "Master of Code",
//        "CTO @ Boon & Gable"
//    ],
//    dollars: 1000
//)
//person2.gender = "male"
//person2.address = "1 Castro St. San Francisco CA 94110"
//person2.title = "Khal"
//
//var person3 = Person(
//    firstName: "Nicole",
//    lastName: "Chiu-Wang",
//    email: "nicole@test.com",
//    honors: [
//        "Miss Los Angeles",
//        "Apprentice Superstar",
//        "COO @ Boon & Gable",
//        "Meerkat Queen"
//    ],
//    dollars: 3000
//)
//person3.gender = "female"
//person3.phoneNumber = "415-555-1234"
//
//var person4 = Person(
//    firstName: "Peppermint",
//    lastName: "Patty",
//    email: "patty@test.com",
//    honors: [
//        "Peanuts Hooligan",
//        "Freckled Friend of Charlie Brown"
//    ],
//    dollars: 5000
//)
//NSLog("person4's gender is " + (person4.gender ?? "decline to state"))
//
//var person5 = Person(
//    firstName: "Oberyn",
//    lastName: "Martell",
//    email: "oberyn@test.com",
//    honors: [
//        "Red Viper of Dorne",
//        "Prince of Dorne"
//    ],
//    dollars: 99
//)
//
//NSLog("\(person1.firstName) \(person1.lastName), \(person1.email), \(person1.address!), \(person1.phoneNumber!)")
//
//NSLog(person1.createGreeting())
//NSLog(person2.createGreeting())
//
//NSLog(person1.createIntroduction())
//
//NSLog(person1.thirdPartyIntroduction())
//NSLog(person2.thirdPartyIntroduction())
//NSLog(person3.thirdPartyIntroduction())
//NSLog(person4.thirdPartyIntroduction())
//
//var people = [person1, person2, person3, person4, person5]
//var emails1: [String] = []
//println(people)
//
//// for-in loop
//for person in people  {
//    println(person.createGreeting())
//    emails1.append(person.email)
//}
//
//for var i = 0; i < people.count; ++i {
//    println(emails1[i])
//}
//
//// OK
//var emails2 = people.map( { (person: Person) -> String in
//    return person.email
//} )
//println(emails2)
//
//// Better
//var emails3 = people.map( { dog in return dog.email } )
//println(emails3)
//
//// Betterer
//var emails4 = people.map( { person in person.email } )
//println(emails4)
//
//// Best
//var emails5 = people.map { person in person.email }
//println(emails5)
//
//// Transform array of person objects into an array of first names
//var firstNames = people.map { person in person.firstName }
//println(firstNames)
//
//// TAKE 1: Transform array of person objects into an array of full names
//var fullNames1: [String] = []
//for person in people {
//    fullNames1.append(person.createFullName())
//}
//println(fullNames1)
//
//// TAKE 2: Transform array of person objects into an array of full names
////        var fullNames2 = people.map { person in person.fullName }
////        println(fullNames2)
//
//// TAKE 3: Transform array of person objects into an array of full names
//var fullNames3 = people.map( { person in "\(person.firstName) \(person.lastName)"  } )
//
//println(people)
//
//// Print fullTitle for person1
//println(person1.fullTitle)
//
//// Print fullTitle for every person
//var fullTitles = people.map ( { person in "\(person.fullTitle)" })
//println(fullTitles)
//
//// Append 2 more honors to that person's honors array, then print the person's full title to be sure the new honors made it in.
//person5.honors += ["Younger brother of Doran Martell", "Victim of The Mountain"]
//println(person5.fullTitle)
//
//// Assign that person5's honors array to a whole new array with 3 totally new honors, then print the person's full title again to make sure it changed.
//person5.honors = ["Lover of Women", "Lover of Life", "Lover of Combat"]
//println(person5.fullTitle)
//
//// Create two different parties with two different names
//var party1 = Party(name: "Nicki's Bday Party", members: [])
//var party2 = Party(name: "Gil's Bday Party", members: [])
//
//// Append two different members to each party
//party1.members += [person1, person3]
//println(party1.members)
//
//party2.members += [person2, person4]
//println(party2.members)
//
//// Print out the roster for each Party
//println(party1.roster)
//println(party2.roster)
//
//// Print out the total dollars held by everyone in the parties
//println(party1.dollars)
//println(party2.dollars)
//
//// Print richList for both parties
//println(party1.richList())
//println(party2.richList())
//
//// Print poorestFirst for both parties
//println(party1.poorestFirst())
//println(party2.poorestFirst())
