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
        
        NSLog("\(person.firstName) \(person.lastName), \(person.email), \(person.address!), \(person.phoneNumber!)")
        
        NSLog(person.createGreeting("Doctor"))
        NSLog(person.createGreeting("Lord"))
        NSLog(person.createGreeting("Maester"))
        NSLog(person.createGreeting("Khal"))
        
        var person2 = Person(a: "Gilman", b: "Tolle", c: "gilman@test.com")
        person.gender = "male"
        
        NSLog(person2.createGreeting("Lord Commander"))
        NSLog(person2.createGreeting("Warden"))
        NSLog(person2.createGreeting("Magister"))
        NSLog(person2.createGreeting("King"))
        
        NSLog(person.createIntroduction("Maester"))
        
        NSLog(person.thirdPartyIntroduction("Maester"))
        
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

