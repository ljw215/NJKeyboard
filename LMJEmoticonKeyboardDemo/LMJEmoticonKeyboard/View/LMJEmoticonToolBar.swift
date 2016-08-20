//
//  LMJEmoticonToolBar.swift
//  LMJEmoticonKeyBoard
//
//  Created by apple on 16/8/18.
//  Copyright © 2016年 NJHu. All rights reserved.
//

import UIKit

enum LMJEmoticonToolBarItemType: Int
{
    case Recent = 0
    case Default = 1
    case Emoji = 2
    case LXH = 3
}


class LMJEmoticonToolBar: UIStackView {
    
    private var lastSelectedBtn: UIButton?
    
    var selectTypeCallBack: ((type: LMJEmoticonToolBarItemType) -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        //        print(self.subviews)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    deinit
    {
        print("LMJEmoticonToolBar-deinit")
    }
}

extension LMJEmoticonToolBar
{
    private func setupUI()
    {
        axis = .Horizontal
        distribution = .FillEqually
        
        addChildBtn("最 近", imageName: nil, type: .Recent)
        addChildBtn("默 认", imageName: nil, type: .Default)
        addChildBtn("emoji", imageName: nil, type: .Emoji)
        addChildBtn("浪小花", imageName: nil, type: .LXH)
        
    }
    
    private func addChildBtn(title: String, imageName: String?, type: LMJEmoticonToolBarItemType)
    {
        let btn = UIButton()
        self.addArrangedSubview(btn)
        
        btn.tag = type.rawValue
        btn.setTitle(title, forState: .Normal)
        
        btn.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        
        btn.setTitleColor(UIColor.grayColor(), forState: .Disabled)
        
        btn.backgroundColor = UIColor(white: 0.93, alpha: 1)
        //        btn.setBackgroundImage(UIImage(named: imageName + "_normal"), forState: .Normal)
        //        btn.setBackgroundImage(UIImage(named: imageName + "_selected"), forState: .Selected)
        btn.titleLabel?.font = UIFont.systemFontOfSize(15)
        //        btn.adjustsImageWhenHighlighted = false
        
        if type == .Recent
        {
            btn.enabled = false
            self.lastSelectedBtn = btn
        }
        
        btn.addTarget(self, action: "selectBtn:isNotCallBack:", forControlEvents: .TouchUpInside)
    }
    
}

extension LMJEmoticonToolBar
{
    func selectBtn(selectBtn: UIButton, isNotCallBack: Bool = true)
    {
        self.lastSelectedBtn?.enabled = true
        selectBtn.enabled = false
        self.lastSelectedBtn = selectBtn
        
        if !isNotCallBack
        {
            selectTypeCallBack?(type: LMJEmoticonToolBarItemType(rawValue: selectBtn.tag)!)
        }
        
    }
}























































































































