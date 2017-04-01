//
//  AppDelegate.swift
//  Tab​Bar​ControllerSB
//
//  Created by Iggy Mwangi on 3/31/17.
//  Copyright © 2017 Iggy Mwangi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let arrayOfImages = [ "1", "2", "3", "4", "5", "6", "7", "8","9","10","11","12","13","14","15","`6",]
    var arrayOfColors = [UIColor]()
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabBar = TabBarController()
        tabBar.viewControllers = self.getArrayOfViewControllers()
        self.customiseTabItems(tabBar: tabBar.tabBar)
        // set tabBar as root
  
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
        return true
    }

    
    func getArrayOfViewControllers() -> [ViewController] {
        var arrayOfVC  = [ViewController]()
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        populateColorArray()
        //append viewcontrollers
        for i in 0..<15 {
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            // customise controllers
            vc.title = arrayOfImages[i]
            vc.view.backgroundColor = arrayOfColors[i]
            
            arrayOfVC.append(vc)
        }
        return arrayOfVC
    }

    func customiseTabItems(tabBar: UITabBar) {
        for item in tabBar.items! {
            item.image = UIImage(named: arrayOfImages[tabBar.items!.index(of: item)!])
            item.title = arrayOfImages[tabBar.items!.index(of: item)!]
        }
    }
    func populateColorArray(){
        for _ in 0..<15 {
            arrayOfColors.append(getRandomColor())
        }
    }
    
    func getRandomColor() -> UIColor{
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}



