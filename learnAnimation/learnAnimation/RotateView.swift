//
//  RotateView.swift
//  learnAnimation
//
//  Created by likai on 2017/4/18.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class RotateView: UIView {

    var rotateDuration : TimeInterval = 0.25
    
    func changeToUpAnimated(_ animated: Bool){
        UIView.animate(withDuration: (animated == true ? self.rotateDuration : 0.0)) { 
            
            self.transform = self.defaultTransform
        }
        
    }
    
    func changeToLeftAnimated(_ animated : Bool){
        
        UIView.animate(withDuration: (animated == true ? self.rotateDuration : 0.0)) { 
            
            self.transform = self.defaultTransform.rotated(by: CGFloat(-Double.pi / 2))
        }
        
    }
    
    func changeToRightAnimated(_ animated : Bool){
        
        UIView.animate(withDuration: (animated == true ? self.rotateDuration : 0.0)) { 
            
            self.transform = self.defaultTransform.rotated(by: CGFloat(Double.pi / 2))
        }
        
    }
    
    func changeToDownAnimated(_ animated: Bool){
        
        UIView.animate(withDuration: (animated == true ? self.rotateDuration : 0.0)) { 
            
            self.transform = self.defaultTransform.rotated(by: CGFloat(Double.pi))
        }
        
    }
    
    
    
    fileprivate var defaultTransform : CGAffineTransform!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        defaultTransform = self.transform
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    

}
