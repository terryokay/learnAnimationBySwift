//
//  CustomHeaderFooterView.swift
//  learnAnimation
//
//  Created by likai on 2017/4/18.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

protocol CustomHeaderFooterViewDelegate : class{
    
    func customHeaderFooterView(_ headerFooterView : CustomHeaderFooterView?, event : AnyObject?)
    
}

class CustomHeaderFooterView: UITableViewHeaderFooterView {

    
    weak var delegate : CustomHeaderFooterViewDelegate?
    weak var data : AnyObject?
    weak var tableView : UITableView?
    weak var controller : UIViewController?
    var section : Int?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        setupHeaderFooterView()
        buildSubView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHeaderFooterView(){}
    
    func buildSubView(){}
    
    func loadContent(){}
    
    func setHeaderFooterViewBackgroundColor(_ color : UIColor){
        self.contentView.backgroundColor = color
    }
    
    class func RegisterTo(_ tableView : UITableView, reuseIdentifier : String? = nil){
        
        tableView.register(self.classForCoder(), forHeaderFooterViewReuseIdentifier: (reuseIdentifier != nil) ? reuseIdentifier! : String(describing: self.classForCoder()))
        
    }
    
    

}
