//
//  CustomViewController.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController , UIGestureRecognizerDelegate{

    let width: CGFloat = UIScreen.main.bounds.size.width
    
    let height: CGFloat = UIScreen.main.bounds.size.height
    
    var enableInteractivPopGestureRecognizer: Bool?{
        
        get{ return (self.navigationController?.interactivePopGestureRecognizer?.isEnabled)}
        
        set(newVal){
            self.navigationController?.interactivePopGestureRecognizer?.isEnabled = newVal!
        }
        
    }
    
    func setup(){
        
        self.automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = UIColor.white
    }
    
    
    func useInteractivePopGestureRecognizer(){
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    func popViewControllerAnimated(_ animated: Bool){
        
        _ = self.navigationController?.popViewController(animated: animated)
    }
    
    func popToRootViewControllerAnimated(_ animated:Bool){
        
        _ = self.navigationController?.popToRootViewController(animated: animated)
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setup()
    }
    
    
    deinit {
        
        print("[❌] '" + String(describing: self.classForCoder) + "' is released.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("[➡️] enter to --> '" + String(describing: self.classForCoder) + "'.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print("[🕒] leave from <-- '" + String(describing: self.classForCoder) + "'.")
    }

}
