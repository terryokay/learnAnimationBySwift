//
//  MixedColorProgressViewController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/19.
//  Copyright © 2017年 terry. All rights reserved.
/*
 
 
 
 上下两个View,除了颜色其他设置都一样.
 动态调整上面的View的宽度,下面的View就显示出来了,就会出现一种进度条的效果.
 
 
 
 */

import UIKit

class MixedColorProgressViewController: NormalTitleViewController {

    fileprivate var upView : UIView!
    fileprivate var upLabel : UILabel!
    fileprivate var downView : UIView!
    fileprivate var downLabel : UILabel!
    fileprivate var timer : Timer!
    
    override func setup() {
        
        super.setup()
        
        downView = UIView(frame: CGRect(x: 0, y: 0, width: 220, height: 17))
        downView.center = (contentView?.middlePoint)!
        downView.layer.cornerRadius = 2
        downView.backgroundColor = UIColor.white
        downView.layer.masksToBounds = true
        contentView?.addSubview(downView)
        
        downLabel = UILabel(frame: downView.bounds)
        downLabel.font = UIFont.HelveticaNeueThin(12.0)
        downLabel.text = "YouXianMing - iOS Programmer"
        downLabel.textAlignment = .center
        downView.layer.borderWidth = 0.5
        downView.layer.borderColor = UIColor.red.cgColor
        downView.addSubview(downLabel)
        
        upView = UIView(frame: CGRect(x: 0, y: 0, width: 220, height: 17))
        upView.center = (contentView?.middlePoint)!
        upView.layer.cornerRadius = 2
        upView.backgroundColor = UIColor.red
        upView.layer.masksToBounds = true
        contentView?.addSubview(upView)
        
        upLabel = UILabel(frame: upView.bounds)
        upLabel.font = UIFont.HelveticaNeueThin(12.0)
        upLabel.text = "YouXianMing - iOS Programmer"
        upLabel.textColor = UIColor.white
        upLabel.textAlignment = .center
        upView.addSubview(upLabel)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(MixedColorProgressViewController.timerEvent), userInfo: nil, repeats: true)
        
        
        
    }
    
    func timerEvent(){
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 3, initialSpringVelocity: 0, options: UIViewAnimationOptions(), animations: {
            
            //调整View的宽度,出现进度条的效果.
            self.upView.width = CGFloat(arc4random() % 220)
            
        }, completion: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        timer.invalidate()
    }

}
