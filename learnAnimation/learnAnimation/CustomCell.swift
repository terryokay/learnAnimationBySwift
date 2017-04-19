//
//  CustomCell.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit


extension UITableView{
    
    func dequeueCellAndLoadContentFromAdapter(_ adaper: CellDataAdapter, indexPath:IndexPath, tableView:UITableView? = nil, controller:UIViewController? = nil) -> CustomCell{
        
        let cell = self.dequeueReusableCell(withIdentifier: adaper.cellReuserIdentifier!) as! CustomCell
        
        
        cell.indexpath = indexPath
        cell.dataAdapter = adaper
        cell.data = adaper.data
        cell.tableView = tableView
        cell.controller = controller
        cell.loadContent()
        
        //cell一般是子类cell
        return cell
        
    }
    
    
    func selectedEventWithIndexPath(_ indexPath : IndexPath){
        
        let cell = self.cellForRow(at: indexPath) as! CustomCell
        
        guard cell.isKind(of: CustomCell.classForCoder()) == true else {
            
            
            return
        }
        
        cell.selectedEvent()
    }
    
    
}

protocol CustomCellDelegate:class {
    
    func customCell(_ cell:CustomCell?, event:AnyObject?)
}

class CustomCell: UITableViewCell {

    
    weak var delegate: CustomCellDelegate?
    weak var dataAdapter: CellDataAdapter?
    weak var data: AnyObject?
    var indexpath :IndexPath?
    weak var tableView: UITableView?
    weak var controller:UIViewController?
    var display : Bool?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupCell()
        self.buildSubView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        
        self.selectionStyle = .none
    }
    
    func buildSubView(){
        
    }
    
    func loadContent(){
        
    }
    
    func selectedEvent(){
        
    }
    
    class func HeightWithData(_ data:AnyObject) -> CGFloat{
        return 0
    }
    
    class func Adapter(_ reuseIdentifier:String? = nil, data: AnyObject? = nil, cellHeight: CGFloat? = 0, type: Int? = nil) -> CellDataAdapter{
        
        let identifier = (reuseIdentifier == nil ? String(describing: self.classForCoder()) : reuseIdentifier)
        
        return CellDataAdapter.init(cellReuseIdentifier: identifier, data: data, cellHeight: cellHeight, cellType: type)
        
        
        
    }
    
    class func RegisterTo(_ tableview:UITableView, cellReuseIdentifier:String? = nil){
        
        tableview.register(self.classForCoder(), forCellReuseIdentifier: (cellReuseIdentifier != nil) ? cellReuseIdentifier! : String(describing: self.classForCoder()))
        
    }
    
    func updateWithNewCellHeight(_ height:CGFloat,animated:Bool = true){
        
        
        guard tableView != nil && dataAdapter != nil else{
            
            return
        }
        if animated {
            
            dataAdapter?.cellHeight = height
            tableView?.beginUpdates()
            tableView?.endUpdates()
        }else{
            dataAdapter?.cellHeight = height
            tableView?.reloadData()
        }
        
    }

}
