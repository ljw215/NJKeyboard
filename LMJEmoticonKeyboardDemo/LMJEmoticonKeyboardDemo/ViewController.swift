//
//  ViewController.swift
//  LMJEmoticonKeyBoard
//
//  Created by apple on 16/8/18.
//  Copyright © 2016年 NJHu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //一行代码集成表情键盘创建的时候, 告知键盘targetTextView
   private lazy var keyboard: LMJEmoticonKeyboard = LMJEmoticonKeyboard(targetTextView: self.textView)
     /// 一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一

    @IBOutlet weak var textView: LMJTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.inputView = keyboard
        
        textView.becomeFirstResponder()
        
        
    }

}










