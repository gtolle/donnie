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
        
        var person = Person(firstName: "Donnie", lastName: "Wang", email: "donnie@test.com")
        person.address = "1 Market St. San Francisco CA 94110"
        person.phoneNumber = "415-123-4567"
        person.gender = "male"
        person.title = "Maester"
        
        var person2 = Person(firstName: "Gilman", lastName: "Tolle", email: "gilman@test.com")
        person2.gender = "male"
        person2.address = "1 Castro St. San Francisco CA 94110"
        person2.title = "Khal"
        
        var person3 = Person(firstName: "Nicole", lastName: "Chiu-Wang", email: "nicole@test.com")
        person3.gender = "female"
        person3.phoneNumber = "415-555-1234"
        
        var person4 = Person(firstName: "Peppermint", lastName: "Patty", email: "patty@test.com")
        NSLog("person4's gender is " + (person4.gender ?? "decline to state"))
        
        NSLog("\(person.firstName) \(person.lastName), \(person.email), \(person.address!), \(person.phoneNumber!)")

        NSLog(person.createGreeting())
        NSLog(person2.createGreeting())

        NSLog(person.createIntroduction())
        
        NSLog(person.thirdPartyIntroduction())
        NSLog(person2.thirdPartyIntroduction())
        NSLog(person3.thirdPartyIntroduction())
        NSLog(person4.thirdPartyIntroduction())
        
        var names = ["Alice Marble", "Bob Barker", "Claire Underwood", "Daniel Craig"]
        
        for name in names  {
            println("Hello, I am \(name)")
        }
        
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

