//
//  AppDelegate.swift
//  Register
//
//  Created by Duc Anh on 11/15/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

//    static var shared = {
//        return UIApplication.shared.delegate as! AppDelegate
//    }()
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //Check user default
        if UserDefaults.standard.object(forKey: "city") != nil {
            let mainSB = UIStoryboard(name: "Main", bundle: nil)
            let summary = mainSB.instantiateViewController(withIdentifier: "summary") as? SummaryViewController
            summary?.isShowRinghtBtn = true
            let navigation = UINavigationController(rootViewController: summary!)
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = navigation
            //Hien thi cua so va bien no thanh cua so chinh
            window?.makeKeyAndVisible()
        }
        
        // Override point for customization after application launch.
            print("didFinishLaunchingWithOptions")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("applicationDidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("applicationWillTerminate")
    }
}

