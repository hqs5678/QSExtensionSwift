//
//  NSNumber+ Converte.swift
//  QSExtensionSwift
//
//  Created by 火星人 on 16/5/23.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

extension Int {
  
    public var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    public var stringValue: String {
        return "\(self)"
    }
    
    public var uIntValue: UInt {
        return UInt(self)
    }
}

extension UInt {
    
    public var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    public var stringValue: String {
        return "\(self)"
    }
    
    public var intValue: Int {
        return Int(self)
    }
}

extension UInt32 {
    
    public var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    public var stringValue: String {
        return "\(self)"
    }
    
    public var intValue: Int {
        return Int(self)
    }
}


extension CGFloat {
    
    public var intValue: Int {
        return Int(self)
    }
    
    public var stringValue: String {
        return "\(self)"
    }
}

extension String {
    
    public var intValue: Int {
        return Int(self)!
    }
    
    public var floatValue: CGFloat {
        return CGFloat(self.intValue)
    }
}
