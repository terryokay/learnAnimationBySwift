//
//  ControllerItem.swift
//  learnAnimation
//
//  Created by likai on 2017/4/17.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class ControllerItem: NSObject {

    
    var controllerClass : AnyClass?
    var name : String?
    
    convenience init(controllerClass : AnyClass, name :String ){
        
        self.init()
        self.controllerClass = controllerClass
        self.name = name
        
    }
}
