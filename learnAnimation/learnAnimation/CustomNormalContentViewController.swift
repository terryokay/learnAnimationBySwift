//
//  CustomNormalContentViewController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class CustomNormalContentViewController: CustomViewController {

    var windowView : UIView?
    var loadingView : UIView?
    var titleView : UIView?
    var contentView : UIView?
    var backgroundView : UIView?
    
    
    override func setup() {
        
        super.setup()
        
        buildBackgroundView()
        buildTitleView()
        buildContentView()
        buildWindowView()
        
        loadingView?.isUserInteractionEnabled = false
        windowView?.isUserInteractionEnabled = false
    }
    
    func buildBackgroundView(){
        
        backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        
        view.addSubview(backgroundView!)
        
        
    }
    
    func buildTitleView(){
        
        titleView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 64))
        
        view.addSubview(titleView!)
    }
    
    
    func buildContentView(){
        
        contentView = UIView(frame: CGRect(x: 0, y: 64, width: width, height: height - 64))
        view.addSubview(contentView!)
    }
    
    func buildWindowView(){
        
        windowView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        
        view.addSubview(windowView!)
    }
    
    
    
    
    

}
