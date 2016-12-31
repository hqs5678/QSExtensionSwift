//
//  UITextFielExtension_Extension.swift
//  formoney
//
//  Created by 火星人 on 15/9/14.
//  Copyright (c) 2015年 huangqingsong. All rights reserved.
//

import UIKit

extension Data{
    
    
    func toString() -> String{
        let str = NSString(data: self, encoding: String.Encoding.utf8.rawValue)
        return str as! String
    }
    
    func toJsonObject() -> AnyObject {
        return try! JSONSerialization.jsonObject(with: self, options: .allowFragments) as AnyObject
    }
    
    
}
