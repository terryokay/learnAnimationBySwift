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
        //添加通知名字,会添加代码方法
        notification.addNotificationName(NotificationEvent.animationsListViewControllerFirstTimeLoadData.Message())
        
        tableView = UITableView(frame: (contentView?.bounds)!)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.rowHeight = 50
        tableView.showsVerticalScrollIndicator = false
        contentView?.addSubview(tableView)
        
        ListItemCell.RegisterTo(tableView)
        
        
        
    }
    
    // MARK: DefaultNotificationCenterDelegate

    func defaultNotificationCenter(_ notificationName: String, object: AnyObject?) {
        
        func add(_ controllerClass : AnyClass! , name : String!){
            
            adapters.append(ListItemCell.Adapter( data: ControllerItem(controllerClass: controllerClass, name: name)))
            
            
            //添加控制器
            
            
            
            
            
            
        }
        
        var indexPaths = [IndexPath]()
        for i in 0 ..< self.adapters.count {
            indexPaths.append(IndexPath(row: i, section: 0))
        }
        
        self.tableView.insertRows(at: indexPaths, with: .fade)
        
    }
    
    override func buildTitleView() {
        
        super.buildTitleView()
        
        func createBackgroundStringLabel(){
            
            let string = "Animations"
            let richText = NSMutableAttributedString(string: string)
            let length = string.lengthOfBytes(using: .utf8)
            let allColor = UIColor.Hex(0x545454)
            let partColor = UIColor.clear
            richText.addAttributes([NSForegroundColorAttributeName : allColor], range: NSMakeRange(0, length))
            richText.addAttributes([NSForegroundColorAttributeName : partColor], range: NSMakeRange(1, 1))
            richText.addAttributes([NSFontAttributeName : UIFont.AvenirLight(28)], range: NSMakeRange(0, length))
            
            let label = UILabel()
            label.attributedText = richText
            label.sizeToFit()
            titleView?.addSubview(label)
            label.center = (titleView?.middlePoint)!
            
            
            
            
        }
    
    
    func createForegroundStringLabel(){
        
        let string = "Animations"
        let richText = NSMutableAttributedString(string: string)
        let length = string.lengthOfBytes(using: .utf8)
        let allColor = UIColor.clear
        let partColor = UIColor.Hex(0x4699D9)
        richText.addAttributes([NSForegroundColorAttributeName : allColor], range: NSMakeRange(0, length))
        richText.addAttributes([NSForegroundColorAttributeName : partColor], range: NSMakeRange(1, 1))
        richText.addAttributes([NSFontAttributeName : UIFont.AvenirLight(28)], range: NSMakeRange(0, length))
        
        let label = UILabel()
        label.attributedText = richText
        label.sizeToFit()
        titleView?.addSubview(label)
        label.center = (titleView?.middlePoint)!
        label.startGlowWithGlowRadius(2, glowOpacity: 0.8, glowColor: partColor, glowDuration: 1, hideDuration: 3, glowAnimationDuration: 2)
        
        
        }
        
        titleView?.addSubview(BackgroundLineView(frame: titleView!.bounds, lineWidth: 4, lineGap: 4, lineColor: UIColor.black.alpha(0.015), rotate: CGFloat(Double.pi / 4)))
        createBackgroundStringLabel()
        createBackgroundStringLabel()
        
        titleView?.addSubview(UIView.CreateLine(CGRect(x: 0, y: titleView!.height - 0.5, width: Width(), height: 0.5), lineColor: UIColor.gray.alpha(0.2)))
        
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return adapters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        return tableView.dequeueCellAndLoadContentFromAdapter(adapters[(indexPath as NSIndexPath).row], indexPath: indexPath, controller: self)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.selectedEventWithIndexPath(indexPath)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        enableInteractivPopGestureRecognizer = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        enableInteractivPopGestureRecognizer = true
    }
    
    
    
    
    
    
    
    
    
    
}
