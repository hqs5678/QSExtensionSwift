//
//  String+Substring.swift
//  QSExtensionSwift
//
//  Created by 火星人 on 16/5/22.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension String {
    
    subscript(index: Int) -> String {
        return self.charAt(index: index)
    }
    
    public func substringTo(_ index: Int) -> String{
        
        if index < 0 || index > self.count{
            return "fatal index"
        }
        let endIndex = self.index(self.startIndex, offsetBy: index) as Index
        return String(self[..<endIndex])
    }
    
    public func substringFrom(_ index: Int) -> String{
        
        if index < 0 || index > self.count - 1{
            return "fatal index"
        }
        let startIndex = self.index(self.startIndex, offsetBy: index)
        return String(self[startIndex...])
    }
    
    public func substringFrom(_ index: Int, length len: Int) -> String {
        
        let to = index + len
        return self.substringFrom(index, toIndex: to)
    }

    
    public func substringFrom(_ index: Int, toIndex to: Int) -> String {
        
        if index < 0 || index > self.count - 1 || to > self.count || to < 0 || index > to {
            return "fatal index"
        }
        let startIndex = self.index(self.startIndex, offsetBy: index)
        let endIndex = self.index(self.startIndex, offsetBy: to)
        return String(self[startIndex..<endIndex])
    }
    
    public func indexOf(string: String) -> Int {
        let range = (self as NSString).range(of: string)
        return range.location
    }
    
    public func charAt(index: Int) -> String{
        return self.substringFrom(index, length: 1)
    }
    
}
