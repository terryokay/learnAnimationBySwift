//
//  RootNavigationViewController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class RootNavigationViewController: CustomNavigationController {
    
    override func viewDidLoad() {
        
        let lauchImageView = UIImageView(frame: self.view.bounds)
        lauchImageView.image = AppleSystemService.launchImage()//获取图片
        view.addSubview(lauchImageView)
        
        UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions(), animations: {
            
            lauchImageView.scale = 1.3
            lauchImageView.alpha = 0
            
            
        }) { (finished) in
            
            lauchImageView.removeFromSuperview()
            //发送通知
            DefaultNotificationCenter.PostMessageTo(NotificationEvent.animationsListViewControllerFirstTimeLoadData.Message())
        }
    }

}
