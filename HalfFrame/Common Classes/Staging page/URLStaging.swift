//
//  URLStaging.swift
//  HalfFrame
//
//  Created by Karthick on 1/30/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import Foundation
import UIKit

extension URL {
 
  // private(set) var domain = "\(UserDefaults.standard.object(forKey: Key.UserDefaults.stagingURL) ?? "")"
  
  //Create base api with domain and Route
 //private static let api = domain + Route.api.rawValue
  
  // MARK:- Login api
  static var login: String {
    
    let domain = "\(UserDefaults.standard.object(forKey: Key.UserDefaults.stagingURL) ?? "")"
    let api = domain + Route.api.rawValue
    
    return api + "login page url"
  }
  
}

