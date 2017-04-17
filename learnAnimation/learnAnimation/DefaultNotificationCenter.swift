//
//  DefaultNotificationCenter.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

protocol DefaultNotificationCenterDelegate:class {
    //代理方法做什么用呢?
    func defaultNotificationCenter(_ notificationName: String, object: AnyObject?)
    
    
}

class DefaultNotificationCenter: NSObject {
    
    weak var delegate : DefaultNotificationCenterDelegate?
    
    class func PostMessageTo(_ name : String, object: AnyObject? = nil){
        
        NotificationCenter.default.post(name: Notification.Name(name), object: object)
    }
    
    func addNotificationName(_ name:String){
        
        var haveTheSameName = false
        
        for model in notificationModels{
            
            if model.name == name {
                
                haveTheSameName = true
                break
            }
        }
        
        
        if haveTheSameName == false {
            
            let model = DefaultNoticationCenterModel()
            model.name = name
            notificationModels.append(model)
            
            //会调用代理方法
            NotificationCenter.default.addObserver(self, selector: #selector(DefaultNotificationCenter.notificationEvent(_:)), name: NSNotification.Name(model.name), object: nil)
            
        }
        
        
    }
    
    
    
    func deleteNotificationName(_ name :String){
        var haveTheSameName = false
        var index : Int = 0
        var model : DefaultNoticationCenterModel!
        
        for tmpModel in notificationModels{
            
            if tmpModel.name == name {
                
                haveTheSameName = true
                
                model = tmpModel
                break
            }
            
            index += 1
        }
        
        if haveTheSameName == true {
            
            NotificationCenter.default.removeObserver(self, name: NSNotification.Name(model.name), object: nil)
            
            notificationModels.remove(at: index)
        }
        
        
    }
    
    func removeAllNotifications(){
        
        for model in notificationModels{
            
            NotificationCenter.default.removeObserver(self, name: NSNotification.Name(model.name), object: nil)
        }
    }
    
    
    
    func notificationNames() -> [String]{
        
        var names = [String]()
        
        for model in notificationModels{
            
            names.append(model.name)
        }
        return names
    }
    
    
    //通知事件
    func notificationEvent(_ obj: AnyObject?){
        
        let notification = obj as! Notification
        //调用代理方法
        delegate?.defaultNotificationCenter(notification.name.rawValue, object:notification.object as AnyObject?)
    }
    
    
    fileprivate var notificationModels : [DefaultNoticationCenterModel] = [DefaultNoticationCenterModel]()
    
    
    deinit {
        
        removeAllNotifications()
        
    }

}


private class DefaultNoticationCenterModel: NSObject{
    
    var name : String!

}
