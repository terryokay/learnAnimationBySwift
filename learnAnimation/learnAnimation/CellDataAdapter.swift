//
//  CellDataAdapter.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class CellDataAdapter: NSObject {
    
    var cellReuserIdentifier : String?
    
    var data : AnyObject?
    
    var cellHeight : CGFloat?
    
    var cellType : Int?
    
    convenience init(cellReuseIdentifier: String?, data: AnyObject?, cellHeight:CGFloat?, cellType:Int?) {
        
        self.init()
        self.cellReuserIdentifier = cellReuseIdentifier
        self.data = data
        self.cellHeight = cellHeight
        self.cellType = cellType
        
    }
    
    class func CreateTableViewType(_ cellReuseIdentifier: String?,data:AnyObject?,cellHeight:CGFloat?,cellType:Int?) -> CellDataAdapter{
        
        return CellDataAdapter.init(cellReuseIdentifier: cellReuseIdentifier, data: data, cellHeight: cellHeight, cellType: cellType)
    }
    
    
    class func CreateCollectionViewType(_ cellReuseIdentifier:String?,data:AnyObject?,cellType:Int?) -> CellDataAdapter{
        
        return CellDataAdapter.init(cellReuseIdentifier: cellReuseIdentifier, data: data, cellHeight: nil, cellType: cellType)
    }

}
