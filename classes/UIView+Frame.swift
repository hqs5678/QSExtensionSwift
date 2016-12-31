 

import UIKit
  

extension UIView {
    
    // MARK: self.frame.origin.x
    public var originX: CGFloat {
        
        set(newValue) {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    // MARK: self.frame.origin.y
    public var originY: CGFloat {
        
        set(newValue) {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    // MARK: self.frame.size.width
    public var sizeWidth: CGFloat {
        
        set(newValue) {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    // MARK: self.frame.size.height
    public var sizeHeight: CGFloat {
        
        set(newValue) {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    } 
    
    // MARK: 最大的y值  即self的最下面的y 值
    public var maxY: CGFloat {
        let frame = self.frame
        return frame.origin.y + frame.size.height
    }
    
    // MARK: 最大的x值  即self的最右边的x 的值
    public var maxX: CGFloat {
        let frame = self.frame
        return frame.origin.x + frame.size.width
    }
    
    // MARK: 当self 在view中居中显示时的 originX
    public func centerXInView(_ view: UIView) -> CGFloat{
        
        let x = (view.sizeWidth - self.sizeWidth) * 0.5
        return x
    }
    
    // MARK: 当self 在view中居中显示时的 originY
    public func centerYInView(_ view: UIView) -> CGFloat{
        
        let y = (view.sizeHeight - self.sizeHeight) * 0.5
        return y
    }
    
    // MARK: 设置self 在view中居中
    public func centerInView(_ view: UIView) {
        
        let x = (view.sizeWidth - self.sizeWidth) * 0.5
        let y = (view.sizeHeight - self.sizeHeight) * 0.5
        
        var frame = self.frame
        frame.origin.x = x
        frame.origin.y = y
        self.frame = frame
    }
    
 
 }

