//
//  LanguageClassPageVC.swift
//  HalfFrame
//
//  Created by Karthick on 2/1/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit

class LanguageFile: NSObject {
  
//  var registerTitle = "RegisterTitle"
  var registerTitle = "RegisterTitle".localized(lang:"en")
  var loginTitle = "LoginTitle".localized(lang:"ar")
  var forgotPasswordTitle = "ForgotPasswordTitle".localized(lang:"en")
  var notificationTitle = "NotificationTitle".localized(lang:"ar")
  
}

extension String {
  func localized(lang:String) ->String {
    //print(lang)
    let path = Bundle.main.path(forResource: lang, ofType: "lproj")
    let bundle = Bundle(path: path!)
    
    return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
  }
}
