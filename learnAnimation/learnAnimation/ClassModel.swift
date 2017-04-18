//
//  ClassModel.swift
//  learnAnimation
//
//  Created by likai on 2017/4/18.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class ClassModel: NSObject {
    
    var className : String = ""
    var students : [StudentModel] = [StudentModel]()
    var expend : Bool = false
    
    convenience init(className : String){
        
        self.init()
        self.className = className
        
    }

}
