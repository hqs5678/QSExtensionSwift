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
        
        let str = "123456"
        print(str.substringTo(6))
        print(str.substringFrom(6))
        print(str.substringFrom(0, toIndex: 7))
    }

    
    


}

class Student {
}

