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
        get {
            return self.description().components(separatedBy: ".").last!
        }
    }

}
