//
//  String+Substring.swift
//  formoney
//
//  Created by 火星人 on 16/5/22.
//  Copyright © 2016年 hqs. All rights reserved.
//

extension String {
    
    func substringToIndex(_ index: Int) -> String{
        return (self as NSString).substring(to: index) as String
    }
    
    func substringFromIndex(_ index: Int) -> String{
        return (self as NSString).substring(from: index) as String
    }
    
    func substringWithRange(_ range: NSRange) -> String {
        return (self as NSString).substring(with: range) as String
    }
}
