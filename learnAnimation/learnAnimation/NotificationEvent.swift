//
//  NotificationEvent.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

enum NotificationEvent: Int {
    
    case animationsListViewControllerFirstTimeLoadData
    
    case countDownTimeCellCountDown
    
    func Message() -> String{
        
        switch self {
        case .animationsListViewControllerFirstTimeLoadData:
            
            return "AnimationsListViewControllerFirstTimeLoadData"
        case .countDownTimeCellCountDown:
            return "CountDownTimeCellCountDown"
        }
        
    }
    
    

}
