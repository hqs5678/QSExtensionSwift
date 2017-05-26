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
        
        for _ in 1 ... 2000000 {
            let n = UInt32.random().intValue
            if n == 0 {
                print("-------------------------\(n)")
            }
            else{
                print(n)
            }
            
        }
        
        
        
    }

    
    


}

