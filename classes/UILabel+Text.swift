//
//  UILabel+Text.swift
//  formoney
//
//  Created by 火星人 on 16/5/15.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension UILabel {
    
    public func isEmpty() -> Bool {
        if  self.text == nil || self.text?.length() == 0 {
            return true
        }
        return false
    }
    
    public func textEqualTo(_ label: UILabel) -> Bool {
        if self.isEmpty() {
            return false
        }
        else {
            if self.text == label.text {
                return true
            }
            else {
                return false
            }
        }
    }
    
    public func textLength() -> Int {
        if self.text != nil {
            return self.text!.length()
        }
        else {
            return 0
        }
    } 
}

