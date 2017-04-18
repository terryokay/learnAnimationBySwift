//
//  StudentModel.swift
//  learnAnimation
//
//  Created by likai on 2017/4/18.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class StudentModel: NSObject {
    
    var name : String = ""
    var age : NSNumber = 0
    
    convenience init(name : String, age : NSNumber){
        
        self.init()
        self.name = name
        self.age = age
        
    }

}
