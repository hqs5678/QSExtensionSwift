//
//  NSNumber+ Converte.swift
//  formoney
//
//  Created by 火星人 on 16/5/23.
//  Copyright © 2016年 hqs. All rights reserved.
//

extension Int {
  
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var stringValue: String {
        return "\(self)"
    }
    
    var uIntValue: UInt {
        return UInt(self)
    }
}

extension UInt {
    
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var stringValue: String {
        return "\(self)"
    }
    
    var intValue: Int {
        return Int(self)
    }
}

extension UInt32 {
    
    var floatValue: CGFloat {
        return CGFloat(self)
    }
    
    var stringValue: String {
        return "\(self)"
    }
    
    var intValue: Int {
        return Int(self)
    }
}


extension CGFloat {
    
    var intValue: Int {
        return Int(self)
    }
    
    var stringValue: String {
        return "\(self)"
    }
}

extension String {
    
    var intValue: Int {
        return Int(self)!
    }
    
    var floatValue: CGFloat {
        return CGFloat(self.intValue)
    }
}
