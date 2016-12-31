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
        
        let frame = CGRect(x: 10, y: 60, width: self.view.frame.size.width - 20, height: 30)
        let searchView = SearchView(frame: frame)
        
        
    
        searchView.clickHandle = {
            (searchView: SearchView) -> () in
            
            
            print("clickHandle")
            
            return
        }
        
        self.view.addSubview(searchView)
    }

    
    


}

