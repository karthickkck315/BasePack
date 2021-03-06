//
//  URLSettingsPageVC.swift
//  HalfFrame
//
//  Created by Karthick on 1/30/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit

enum Environment: String {
  case Production  = "Production URL"
  case Testing     = "Testing URl"
  case Development = "Development URL"
}

enum Route: String {
  case api  = "/route URL/"
 
}

class URLSettingsPageVC: 
UIViewController {
  
  @IBOutlet weak var developmentButton: UIButton!
  
  @IBOutlet weak var productionButton: UIButton!
  
  @IBOutlet weak var testingButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
     developmentButton.set(image: #imageLiteral(resourceName: "radioCheck"), title: "Development", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    developmentButton.tintColor = .appDarkBlueColor
    developmentButton .setTitleColor(.appDarkGrayColor, for: .normal)
    
    productionButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Production", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    productionButton.tintColor = .appDarkBlueColor
    productionButton.setTitleColor(.appDarkGrayColor, for: .normal)
    
    testingButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Testing", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    testingButton.tintColor = .appDarkBlueColor
    testingButton.setTitleColor(.appDarkGrayColor, for: .normal)
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: set Development api
  @IBAction func didTapDevelopmentAction(_ sender: Any) {
    let env = Environment.Development.rawValue
    print(env)
    UserDefaults.standard.set(env, forKey:Key.UserDefaults.stagingURL)
    developmentButton.set(image: #imageLiteral(resourceName: "radioCheck"), title: "Development", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    productionButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Production", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    testingButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Testing", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    
  }
  
  // MARK: set Production api
  @IBAction func didTapProductionAction(_ sender: Any) {
    let env = Environment.Production.rawValue
    print(env)
    UserDefaults.standard.set(env, forKey:Key.UserDefaults.stagingURL)
    
    developmentButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Development", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    productionButton.set(image: #imageLiteral(resourceName: "radioCheck"), title: "Production", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    testingButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Testing", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
  }
  
  // MARK: set Testing api
  @IBAction func didTapTestingAction(_ sender: Any) {
    let env = Environment.Testing.rawValue
    print(env)
    UserDefaults.standard.set(env, forKey:Key.UserDefaults.stagingURL)
    
    developmentButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Development", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    productionButton.set(image: #imageLiteral(resourceName: "radiouncheck"), title: "Production", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
    testingButton.set(image: #imageLiteral(resourceName: "radioCheck"), title: "Testing", titlePosition: .right, additionalSpacing: 30.0, state: .normal)
  }
  
//  func saveEnvironment(environment : Environment){
//    UserDefaults.standard.set(environment.rawValue, forKey:Key.UserDefaults.stagingURL)
//  }
}
