//
//  UITextFielExtension_Extension.swift
//  formoney
//
//  Created by 火星人 on 15/9/14.
//  Copyright (c) 2015年 huangqingsong. All rights reserved.
//

import UIKit

extension String{
    
    public func boundWithSize(_ size:CGSize ,font:UIFont) -> CGRect{
        let newStr:NSString = NSString(string: self)
        
        return newStr.boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil)
    }
    
    public func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet(charactersIn: " "))
    }
    
    public func length() -> Int {
        return (self as NSString).length
    }
    
    public func data2String(_ data:Data) -> String{
        let str = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
        return str as! String
    }
    
    public func toFArray() -> NSArray!{
        if self.length() > 3 {
            let array = self.components(separatedBy: ",,,")
            return array as NSArray!
        }
        else {
            return nil
        }
    }
    
}
