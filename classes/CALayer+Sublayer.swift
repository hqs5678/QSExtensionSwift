//
//  UIView+Subview.swift
//  formoney
//
//  Created by hqs on 16/4/19.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension CALayer {
    
    public func removeAllSublayers(){
        let sublayers = self.sublayers
        guard sublayers != nil else {
            return
        }
        if sublayers!.count == 0 {
            return
        }
        
        for v in sublayers! {
            v.removeFromSuperlayer()
        }
    }
}
