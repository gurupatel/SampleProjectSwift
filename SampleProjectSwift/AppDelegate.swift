//
//  AppDelegate.swift
//  SampleProjectSwift
//
//  Created by Gaurang Patel on 01/02/20.
//  Copyright © 2020 POLLFISH. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    internal func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        
        /*let pollfishParams = PollfishParams ()
        
        pollfishParams.indicatorPosition=Int32(PollfishPosition.PollFishPositionMiddleRight.rawValue);
        pollfishParams.indicatorPadding=10;
        pollfishParams.releaseMode = false;
        pollfishParams.offerwallMode = false;
        pollfishParams.rewardMode=false;
        pollfishParams.requestUUID="my_id";
        
        Pollfish.initWithAPIKey("2ae349ab-30b8-4100-bc4d-b33b82e76519", andParams: pollfishParams);*/
  
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
    }
}
