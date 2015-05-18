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
        
        var person = Person(a: "Donnie", b: "Wang", c: "donnie@test.com")
        person.address = "1 Market St. San Francisco CA 94110"
        person.phoneNumber = "415-123-4567"
        person.gender = "male"
        
        var person2 = Person(a: "Gilman", b: "Tolle", c: "gilman@test.com")
        person2.gender = "male"
        
        var person3 = Person(a: "Nicole", b: "Chiu-Wang", c: "nicole@test.com")
        person3.gender = "female"
        
        var person4 = Person(a: "Peppermint", b: "Patty", c: "patty@test.com")
//        person4.gender = nil
//        NSLog("person4's gender is " + person4.gender!)
        
        NSLog("\(person.firstName) \(person.lastName), \(person.email), \(person.address!), \(person.phoneNumber!)")

        NSLog(person.createGreeting("Maester"))
        NSLog(person2.createGreeting("Khal"))
        
        NSLog(person.createIntroduction("Maester"))
        
        NSLog(person.thirdPartyIntroduction("Maester"))
        NSLog(person2.thirdPartyIntroduction("Khal"))
        NSLog(person3.thirdPartyIntroduction("Khaleesi"))
//        NSLog(person4.thirdPartyIntroduction("Warlock"))
        
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

