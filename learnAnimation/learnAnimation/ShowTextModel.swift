//
//  ShowTextModel.swift
//  learnAnimation
//
//  Created by likai on 2017/4/19.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class ShowTextModel: NSObject {

    var inputString : String?
    var expendStringHeight : CGFloat?
    var normalStringHeight : CGFloat?
    
    convenience init(_ inputString : String){
        self.init()
        
        self.inputString = inputString
        
    }
}
