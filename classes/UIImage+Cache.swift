//
//  Extensions.swift
//  formoney
//
//  Created by 火星人 on 15/9/14.
//  Copyright (c) 2015年 huangqingsong. All rights reserved.
//




extension UIImage{
  
    
    func writeToFile(_ filePath:String){
        let data = UIImagePNGRepresentation(self)!
        try? data.write(to: URL(fileURLWithPath: filePath), options: [])
    }
    
    func saveToFile(_ filePath: String){
        writeToFile(filePath)
    }
    
    func data() -> Data?{
       return UIImagePNGRepresentation(self)
    }
}
