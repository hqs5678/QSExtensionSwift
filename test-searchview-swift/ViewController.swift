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
       
        var str = "     123   "
        str = str.trim()
        print(str)
        print(str.length)
        
        str = "http://www.baidu.com"
        print(str.trim("http://"))
        
        
        var s: String?
        s = "  "
        print(s.length)
        print(s.isBlank)
    }

    
    


}

