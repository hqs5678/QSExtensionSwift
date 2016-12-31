//
//  SearchView.swift
//  test-searchview-swift
//
//  Created by Apple on 2016/12/15.
//  Copyright © 2016年 huangqingsong. All rights reserved.
//

import UIKit

class SearchView: UIView {

    lazy var iconButton = UIButton(type: .system)
    lazy var titleLabel = UILabel()
    lazy var clickHandle = {
        (searchView: SearchView) -> () in return
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        
        self.layer.cornerRadius = 4
        self.backgroundColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1)
        
        iconButton.setImage(UIImage(named: "search"), for: .normal)
        iconButton.tintColor = UIColor.darkGray
        iconButton.contentMode = .scaleAspectFit
        iconButton.isUserInteractionEnabled = false
        self.addSubview(iconButton)
        
        let wh: CGFloat = self.frame.size.height * 0.43
        titleLabel.text = "搜索任务"
        titleLabel.font = UIFont.systemFont(ofSize: wh)
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor.darkGray
        self.addSubview(titleLabel)
        
        
        self.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(SearchView.onTap))
        self.addGestureRecognizer(tap)
    }
    
    @objc private func onTap(){
        clickHandle(self)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var frame = self.frame
        let wh: CGFloat = self.frame.size.height * 0.43
        let offset: CGFloat = 40
        iconButton.frame = CGRect(x: frame.size.width * 0.5 - offset, y: (frame.size.height - wh) * 0.5, width: wh, height: wh)

        frame.size.width = frame.size.width * 0.5
        frame.origin.y = iconButton.frame.origin.y
        frame.size.height = self.frame.size.height - iconButton.frame.origin.y * 2
        frame.origin.x = frame.size.width - offset + wh + 6
        titleLabel.frame = frame

    }
}
