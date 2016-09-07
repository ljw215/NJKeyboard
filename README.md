# NJKeyboard
一行代码集成表情键盘


import UIKit

class ViewController: UIViewController {
    

//一行代码一行代码一行代码一行代码一行代码一行代码    
   private lazy var keyboard: LMJEmoticonKeyboard = LMJEmoticonKeyboard(targetTextView: self.textView)

//一行代码一行代码一行代码一行代码一行代码

    @IBOutlet weak var textView: LMJTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.inputView = keyboard
        
        textView.becomeFirstResponder()
        
        /// 获得textview的表情纯文本
      let stringAbsoult = textView.stringText
        print(stringAbsoult)
        
        ///把服务器纯文本转化文富文本
        let attrbstring = "123[炸鸡和啤酒], [发红包]"
        let atrbs = LMJEmoticonTool.sharedTool.emoticonAttributedString(attrbstring, font: UIFont.systemFontOfSize(16))
        print(atrbs)
        
    }

}
