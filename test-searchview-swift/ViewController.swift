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
            let n = Int.random(100)
            if n == 0 || n == 100{
                print("-------------------------\(n)")
            }
            else{
                print(n)
            }
            
        }
        
        
        
    }

    
    


}

