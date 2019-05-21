//
//  AppDelegate.swift
//  AsynkitSample
//
//  Created by Khoi on 5/21/19.
//  Copyright © 2019 Khoi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let mainVc = MainViewController()
        mainVc.view.backgroundColor = UIColor.white
        window!.rootViewController = mainVc
        window!.makeKeyAndVisible()

        return true
    }
}

