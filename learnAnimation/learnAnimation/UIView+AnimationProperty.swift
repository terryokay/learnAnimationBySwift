//
//  UIView+AnimationProperty.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

private var scaleKey: UInt8 = 0
private var angleKey: UInt8 = 0

extension UIView{
    
    var scale : CGFloat?{
        
        get{
            if let tmpValue = objc_getAssociatedObject(self, &scaleKey) as? CGFloat{
                return tmpValue
            }else{
                
                return 0
            }
        }
        
        set(newVal){
            objc_setAssociatedObject(self, &scaleKey, newVal, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            transform = CGAffineTransform(scaleX: newVal!, y: newVal!)
        }
        
    }
    
    var angle : CGFloat?{
        
        get{
            if let tmpValue = objc_getAssociatedObject(self, &angleKey) as? CGFloat{
                return tmpValue
            }else{
                
                return 0
            }
        }
        
        set(newVal){
            objc_setAssociatedObject(self, &angleKey, newVal, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            transform = CGAffineTransform(rotationAngle: newVal!)
            

        }
    }
}
