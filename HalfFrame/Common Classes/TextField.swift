//
//  TextField.swift
//  PickApp
//
//  Created by Karthick on 11/9/17.
//  Copyright © 2017 Com. All rights reserved.
//

import UIKit

class TextField: UITextField {
 
        let padding = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 5);
        let paddingR = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 40);
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return UIEdgeInsetsInsetRect(bounds, GlobalClass.language == "ar" ? paddingR : padding)
        }
        
        override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return UIEdgeInsetsInsetRect(bounds, GlobalClass.language == "ar" ? paddingR : padding)
        }
        
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return UIEdgeInsetsInsetRect(bounds, GlobalClass.language == "ar" ? paddingR : padding)
        }
}
//MARK:- Tool bar
extension UITextField {
    
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar()
        doneToolbar.barStyle = .blackTranslucent
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style:.done, target: self, action: #selector(UITextField.doneButtonAction))
        done.setTitleTextAttributes([NSAttributedStringKey.font:UIFont.regularFont20 , NSAttributedStringKey.foregroundColor : UIColor.white], for: .normal)
        let items = NSMutableArray()
        items.add(flexSpace)
        items.add(done)
        doneToolbar.items = items as? [UIBarButtonItem]
        doneToolbar.sizeToFit()
        self.inputAccessoryView = doneToolbar
        
    }
    @objc func doneButtonAction(){
        self.resignFirstResponder()
    }
    
    func addPadding()
    {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        self.borderStyle = .none
        self.leftView = paddingView
        self.leftViewMode = .always
        
    }
}

