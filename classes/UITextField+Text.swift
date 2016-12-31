//
//  UITextField+Text.swift
//  formoney
//
//  Created by 火星人 on 16/5/9.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension UITextField {
    
    public func isEmpty() -> Bool {
        if  self.text == nil || self.text?.length() == 0 {
            return true
        }
        return false
    }
    
    public func textEqualTo(_ textField: UITextField) -> Bool {
        if self.isEmpty() {
            return false
        }
        else {
            if self.text == textField.text {
                return true
            }
            else {
                return false
            }
        }
    }
    
    public func setPlaceholderTextColor(_ color: UIColor) {
        self.attributedPlaceholder = NSMutableAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName : color])
    }
    
    public func textWillChangedWithFloatNumber(replaceString: String) -> Bool {
        
        let number = "1234567890."
        var dotCount = 0
        if let text = self.text {
            for ch in text.characters {
                if ch == "." {
                    dotCount = 1
                    break
                }
            }
            
            if text.length() == 1 {
                if text == "0" {
                    if replaceString.characters.first == "0" {
                        return false
                    }
                    else if replaceString.characters.first != "." {
                        self.text = replaceString
                        return false
                    }
                }
            }
            
            if text.length() == 0 {
                if replaceString.characters.first == "." {
                    return false
                }
            }
        }
        
        
        
        for ch in replaceString.characters {
            
            if number.contains("\(ch)") {
                if ch == "." {
                    dotCount += 1
                    if dotCount > 1 {
                        return false
                    }
                }
            }
            else{
                return false
            }
        }
        
        return true
    }
    
    public func textWillChangedWithIntegerNumber(replaceString: String) -> Bool {
        
        let number = "1234567890"
        
        if let text = self.text {
            if replaceString.characters.first == "0" && text.length() == 0 {
                return false
            }
        }
        
        
        for ch in replaceString.characters {
            
            if number.contains("\(ch)") {
                continue
            }
            else{
                return false
            }
        }
         
        return true
    }
}
