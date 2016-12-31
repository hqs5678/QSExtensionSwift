//
//  UITextField+Text.swift
//  formoney
//
//  Created by 火星人 on 16/5/9.
//  Copyright © 2016年 hqs. All rights reserved.
//


extension UITextView {
    
    func isEmpty() -> Bool {
        if  self.text == nil || self.text?.length() == 0 {
            return true
        }
        return false
    }
    
    func textEqualTo(_ textView: UITextView) -> Bool {
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
