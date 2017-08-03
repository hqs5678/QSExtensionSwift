//
//  File.swift
//  QSExtensionSwift
//
//  Created by 火星人 on 16/5/9.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension NSObject {
    
    public var className: String {
        return "\(self.classForCoder)"
    }
    
    static var className: String {
        return self.description().components(separatedBy: ".").last!
    }

}


func ClassName(_ object: AnyObject) -> String{
    return object.description.components(separatedBy: ".").last!
}

func ClassName(_ object: NSObject) -> String{
    return object.className
}

func ClassName(_ object: AnyClass) -> String{
    return object.description().components(separatedBy: ".").last!
}

