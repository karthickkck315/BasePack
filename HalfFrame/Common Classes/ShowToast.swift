//
//  StringReplacing.swift
//  PickApp
//
//  Created by Karthick on 11/9/17.
//  Copyright © 2017 Com. All rights reserved.
//

import UIKit

extension UIViewController {
    
    //MARK:- Toast view
    func showToast(message : String) {
        let lblHeight = self.height(constraintedWidth:self.view.frame.size.width-40 , font:UIFont.regularFont12,text:message)
        
        let toastLabel = UILabel(frame: CGRect(x: 20, y: self.view.frame.size.height-100, width: self.view.frame.size.width-40, height:lblHeight+30))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont.regularFont12
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        toastLabel.numberOfLines = 0
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    //MARK:- label height calculate
    func height(constraintedWidth width: CGFloat, font: UIFont, text:String) -> CGFloat {
        let label =  UILabel(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.text = text
        label.font = font
        label.sizeToFit()
        return label.frame.height
    }
    
    //MARK:- String Replacing
    func createToast(string:String, string1:String, string2:String) -> String {
        var result = string.replacingOccurrences(of:"{0}", with:string2)
        result = result.replacingOccurrences(of:"{1}", with:string1)
        return result;
    }
    
    //MARK:- String Replacing
    func stringReplacingToast(string:String, replacingStr:String) -> String {
        let result = string.replacingOccurrences(of:"{0}", with:replacingStr)
        return result;
    }
  
  
  
    
}
//extension String {
//    mutating func replace(_ originalString:String, with newString:String) {
//        self = self.replacingOccurrences(of: originalString, with: newString)
//    }
//}

