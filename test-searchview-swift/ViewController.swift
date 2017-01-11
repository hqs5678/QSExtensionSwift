//
//  ViewController.swift
//  test-searchview-swift
//
//  Created by Apple on 2016/12/15.
//  Copyright © 2016年 huangqingsong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "01234567890"
        print(str.length)
        print(str.substringToIndex(3))
        print(str.substringFromIndex(3))
        print(str.substringFromIndex(3, toIndex: 5))
        
        print(str.substringToIndex(-1))
        print(str.substringFromIndex(33))
        print(str.substringFromIndex(-2, toIndex: 2))
        
        print(str.indexOf(string: "34"))
        
        let s = "1..2.3.4.5"
        print(s.toArrayBy(separator: ".."))
        
        
        
    }

    
    


}

