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
        
        
        
        print(self.className)
        print(ViewController.className)
        
        print(ClassName(self))
        print(ClassName(ViewController.self))
        
        let s = Student()
        print(ClassName(s))
        print(ClassName(Student.self))
        
    }

    
    


}

class Student {
}

