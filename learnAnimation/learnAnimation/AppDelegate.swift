//
//  AppDelegate.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

/*
 
 Swift version Animations - https://github.com/YouXianMing/Swift-Animations
 
 Lateast no warning version : Xcode Version 8.2.1 (8C1002)
 
 QQ    705786299
 Email YouXianMing1987@126.com
 
 http://www.cnblogs.com/YouXianMing/
 https://github.com/YouXianMing
 https://github.com/YouXianMing/YoCelsius
 
 AppStore : https://itunes.apple.com/us/app/yocelsius/id967721892?l=zh&ls=1&mt=8
 Video    : http://my.jikexueyuan.com/YouXianMing/record/
 
 */

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = window {
            
            window.backgroundColor = UIColor.white
            
            let controller = AnimationsListViewController()
            let rootViewController = RootNavigationViewController(rootViewController: controller, hideTabBar: true)
            window.rootViewController = rootViewController
            
            window.makeKeyAndVisible()
            
            
            
            
            
        }
        
        
        
        return true
    }



}

