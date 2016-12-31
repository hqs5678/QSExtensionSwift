//
//  UIViewController+SocialData.swift
//  formoney
//
//  Created by 火星人 on 16/4/17.
//  Copyright © 2016年 hqs. All rights reserved.

import UIKit

extension UIViewController{
  
    func makeToast(_ message: String) {
        self.navigationController?.view.makeToast(message)
    }
}
