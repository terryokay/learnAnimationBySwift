//
//  AppleSystemService.swift
//  learnAnimation
//
//  Created by likai on 2017/4/14.
//  Copyright © 2017年 terry. All rights reserved.
//

import UIKit

class AppleSystemService: NSObject {
    
    class func launchImage() -> UIImage{
        var launchImage : UIImage!
        var viewOrientation : String!
        let viewSize = UIScreen.main.bounds.size
        let orientation = UIApplication.shared.statusBarOrientation
        
        if orientation == .landscapeLeft || orientation == .landscapeRight {
            
            viewOrientation = "Landscape"
        }else{
            viewOrientation = "Portrait"
        }
        
        let imagesInfoArray = Bundle.main.infoDictionary!["UILaunchImages"]
        for dict : Dictionary<String,String> in imagesInfoArray as! Array{
            let imageSize = CGSizeFromString(dict["UILaunchImageSize"]!)
            if imageSize.equalTo(viewSize) && viewOrientation == dict["UILaunchImageOrientation"]! as String {
                
                launchImage = UIImage(named: dict["UILaunchImageName"]!)
            }
        }
        
        return launchImage
    }

}
