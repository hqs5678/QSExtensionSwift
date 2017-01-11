//
//  UITextFielExtension_Extension.swift
//  QSExtensionSwift
//
//  Created by 火星人 on 15/9/14.
//  Copyright (c) 2015年 huangqingsong. All rights reserved.
//

import UIKit

extension String {
    
    public var length: Int {
        return self.characters.count
    }
    
    public func boundWithSize(_ size:CGSize ,font:UIFont) -> CGRect{
        let newStr:NSString = NSString(string: self)
        
        return newStr.boundingRect(with: size, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil)
    }
    
    public func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet(charactersIn: " "))
    }
    
    public func toDataValue() -> Data? {
        return self.data(using: .utf8)
    }
    
    
    public func toArrayBy(separator: String) -> NSArray!{
        if self.length > 1 {
            let array = self.components(separatedBy: separator)
            return array as NSArray!
        }
        else {
            return nil
        }
    }
    
}
