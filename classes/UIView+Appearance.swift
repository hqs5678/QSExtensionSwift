//
//  UITextFielExtension_Extension.swift
//  formoney
//
//  Created by 火星人 on 15/9/14.
//  Copyright (c) 2015年 huangqingsong. All rights reserved.
//

import UIKit

extension UIView{
    
    func setRoundAppearance( _ borderColor:UIColor, borderWidth: CGFloat) {
        self.layer.cornerRadius=self.frame.size.width * 0.5
        self.layer.borderColor=borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = true
    }
    
    func setRoundAppearance( _ borderColor:UIColor, cornerRadius:CGFloat, backgroundColor:UIColor) {
        self.layer.backgroundColor=backgroundColor.cgColor
        self.layer.cornerRadius=cornerRadius
        self.layer.borderColor=borderColor.cgColor
        self.layer.borderWidth = 0.5
        self.layer.masksToBounds = true
    }
    
    func setRoundAppearance( _ borderColor:UIColor, cornerRadius:CGFloat) {
        
        self.layer.cornerRadius=cornerRadius
        self.layer.borderColor=borderColor.cgColor
        self.layer.borderWidth = 0.5
        self.layer.masksToBounds = true
    }
     
    func setRoundAppearance( _ borderColor:UIColor, backgroundColor:UIColor) {
        self.setRoundAppearance(borderColor, cornerRadius: self.frame.size.height * 0.5, backgroundColor: backgroundColor)
    }
    
    func setRoundAppearance( _ borderColor:UIColor) {
        self.setRoundAppearance(borderColor, cornerRadius: self.frame.size.height * 0.5, backgroundColor: self.backgroundColor!)
    }
    
    func setRoundAppearance() {
        setRoundAppearance(UIColor.blue, borderWidth: 0)
    }
    
    public var cornerRadius: CGFloat {
        set(newValue) {
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
    public var borderWidth: CGFloat {
        set(newValue) {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }
    
    public var borderColor: CGColor? {
        set(newValue) {
            self.layer.borderColor = newValue
        }
        get {
            return self.layer.borderColor
        }
    }
    
    
    
    public func setCornerRadius(_ corners: UIRectCorner, cornerRadii: CGSize){
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: cornerRadii)
        let shapLayer = CAShapeLayer()
        shapLayer.frame = self.bounds
        shapLayer.path = maskPath.cgPath
        
        self.layer.mask = shapLayer
    }
    
    
     
}
