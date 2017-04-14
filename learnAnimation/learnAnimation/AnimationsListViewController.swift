//
//  AnimationsListViewController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class AnimationsListViewController: CustomNormalContentViewController,DefaultNotificationCenterDelegate,UITableViewDelegate,UITableViewDataSource {
    
    
    fileprivate var tableView: UITableView!
    
    fileprivate var notification : DefaultNotificationCenter = DefaultNotificationCenter()
    
    fileprivate var adapters :[CellDataAdapter] = [CellDataAdapter]()
    
    override func setup() {
        
        super.setup()
        
        notification.delegate = self
        notification.addNotificationName(NotificationEvent.animationsListViewControllerFirstTimeLoadData.Message())
        
        tableView = UITableView(frame: (contentView?.bounds)!)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 50
        tableView.showsVerticalScrollIndicator = false
        contentView?.addSubview(tableView)
        
//        ListItemcell
        
        
        
    }
    
    func defaultNotificationCenter(_ notificationName: String, object: AnyObject?) {
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        return UITableViewCell()
    }
    
    
    
    
    
    
    
    
    
    
}
