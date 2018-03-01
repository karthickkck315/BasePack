//
//  LoginPageVC.swift
//  HalfFrame
//
//  Created by Karthick on 1/30/18.
//  Copyright © 2018 Karthick. All rights reserved.
//
let deviceType = "2"

import UIKit

class LoginPageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      self.view.backgroundColor = .appDarkBlueColor
      print(URL.login)
    }

  //MARK:- API CALL
  @IBAction func didTapSignInAction(_ sender: Any)
  {
    
//    let param = "username=\(userNameTextField.text ?? "")&password=\(passwordTextField.text ?? "")&device_id=\(123)&device_type=\(deviceType)"
    let param = "username=123123&password=12312313&device_id=\(123)&device_type=\(deviceType)"
    ApiParser().apiCall(url:URL.login, parameter:param, methodType:"POST", CompletionHandler: {(dictionary) in
      print(dictionary)
      print(dictionary.object(forKey:"status") ?? "")
      //MARK:- SavedUserDetails
      //UserInfoSaved().Saved(userData:dictionary)
      DispatchQueue.main.async {
        self.navigationController?.isNavigationBarHidden = false
        let homePage = self.storyboard?.instantiateViewController(withIdentifier: "identifier")
        self.navigationController?.present(homePage!, animated: true, completion: nil)
        //self.navigationController?.pushViewController(homePage, animated: true)
      }
    })
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
