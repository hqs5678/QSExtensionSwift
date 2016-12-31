////
////  String+Security.swift
////  formoney
////
////  Created by 火星人 on 16/4/16.
////  Copyright © 2016年 hqs. All rights reserved.
////
//
//import UIKit
//
//extension String {
//    
//    
//    var md5: String! {
//        let str = self.cString(using: String.Encoding.utf8)
//        let strLen = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
//        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
//        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
//        
//        CC_MD5(str!, strLen, result)
//        
//        let hash = NSMutableString()
//        for i in 0..<digestLen {
//            hash.appendFormat("%02x", result[i])
//        }
//        
//        result.deinitialize()
//        
//        return String(format: hash as String)
//    }
//    
//    var sha1: String! {
//        let str = self.cString(using: String.Encoding.utf8)
//        let strLen = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
//        let digestLen = Int(CC_SHA1_DIGEST_LENGTH)
//        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
//        
//        CC_SHA1(str!, strLen, result)
//        
//        let hash = NSMutableString()
//        for i in 0..<digestLen {
//            hash.appendFormat("%02x", result[i])
//        }
//        
//        result.deinitialize()
//        
//        return String(format: hash as String)
//    }
//    
//    var base64String: String!{
//        let plainData = data(using: String.Encoding.utf8)
//        let base64String = plainData?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
//        return base64String!
//    }
//    
//    var fromBase64String: String! {
//        
//        let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters)
//        if data == nil {
//            return self
//        }
//        return String.init(data: data!, encoding: String.Encoding.utf8)
//    }
//    
//    
//    public static public func uuid() -> String {
//        return UUID().uuidString
//    }
//    
//}
