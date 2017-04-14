//
//  CustomNavigationController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    
    convenience init(rootViewController: CustomViewController, hideTabBar : Bool) {
        
        self.init(rootViewController : rootViewController)
        rootViewController.useInteractivePopGestureRecognizer()
        setNavigationBarHidden(hideTabBar, animated: false)
    }
    
    

}
