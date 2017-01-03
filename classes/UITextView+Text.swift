//
//  UITextField+Text.swift
//  QSExtensionSwift
//
//  Created by 火星人 on 16/5/9.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension UITextView {
    
    public func isEmpty() -> Bool {
        if  self.text == nil || self.text?.length() == 0 {
            return true
        }
        return false
    }
    
    public func equalTo(_ textView: UITextView) -> Bool {
        if self.isEmpty() {
            return false
        }
        else {
            if self.text == textView.text {
                return true
            }
            else {
                return false
            }
        }
    }
}
