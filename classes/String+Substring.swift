//
//  String+Substring.swift
//  formoney
//
//  Created by 火星人 on 16/5/22.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension String {
    
    public func substringToIndex(_ index: Int) -> String{
        return (self as NSString).substring(to: index) as String
    }
    
    public func substringFromIndex(_ index: Int) -> String{
        return (self as NSString).substring(from: index) as String
    }
    
    public func substringWithRange(_ range: NSRange) -> String {
        return (self as NSString).substring(with: range) as String
    }
}
