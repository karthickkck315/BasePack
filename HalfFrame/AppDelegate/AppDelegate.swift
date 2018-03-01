//
//  AppDelegate.swift
//  HalfFrame
//
//  Created by Karthick on 1/23/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import UIKit
import QuartzCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var mask: CALayer?
  var imageView: UIImageView?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    //Set default Development Api
    UserDefaults.standard.set(Environment.Development.rawValue, forKey:Key.UserDefaults.stagingURL)
    
    /*GiFHUD.setGif("pika.gif")
    
    perform(#selector(call), with: nil, afterDelay:0)
    sleep(0)*/
    
    
//
//
//    self.window = UIWindow(frame: UIScreen.main.bounds)
//    self.window!.backgroundColor = UIColor(red: 241/255, green: 196/255, blue: 15/255, alpha: 1)
//    self.window!.makeKeyAndVisible()
//
//    // rootViewController from StoryBoard
//    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//    let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "navigationController")
//    self.window!.rootViewController = navigationController
//
//    // logo mask
//    navigationController.view.layer.mask = CALayer()
//    navigationController.view.layer.mask?.contents = UIImage(named: "twitter logo mask.png")!.cgImage
//    navigationController.view.layer.mask?.bounds = CGRect(x: 0, y: 0, width: 60, height: 60)
//    navigationController.view.layer.mask?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//    navigationController.view.layer.mask?.position = CGPoint(x: navigationController.view.frame.width / 2, y: navigationController.view.frame.height / 2)
//
//    // logo mask background view
//    let maskBgView = UIView(frame: navigationController.view.frame)
//    maskBgView.backgroundColor = UIColor.white
//    navigationController.view.addSubview(maskBgView)
//    navigationController.view.bringSubview(toFront: maskBgView)
//
//
//    // logo mask animation
//    let transformAnimation = CAKeyframeAnimation(keyPath: "bounds")
//    transformAnimation.delegate = self as? CAAnimationDelegate
//    transformAnimation.duration = 1
//    transformAnimation.beginTime = CACurrentMediaTime() + 1 //add delay of 1 second
//    let initalBounds = NSValue(cgRect: (navigationController.view.layer.mask?.bounds)!)
//    let secondBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 50, height: 50))
//    let finalBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 2000, height: 2000))
//    transformAnimation.values = [initalBounds, secondBounds, finalBounds]
//    transformAnimation.keyTimes = [0, 0.5, 1]
//    transformAnimation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)]
//    transformAnimation.isRemovedOnCompletion = false
//    transformAnimation.fillMode = kCAFillModeForwards
//    navigationController.view.layer.mask?.add(transformAnimation, forKey: "maskAnimation")
    
    return true
  }
  @objc func call(){
    GiFHUD.showWithOverlay()
    
    let delay = DispatchTime.now() + Double(Int64(2 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    DispatchQueue.main.asyncAfter(deadline: delay, execute: {
      GiFHUD.dismiss()
    })
  }
  private func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }
  
  private func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }
  
  private func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }
  
  private func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }
  
  private func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }
  
  func animateMask() {
    let keyFrameAnimation = CAKeyframeAnimation(keyPath: "bounds")
    keyFrameAnimation.delegate = self as? CAAnimationDelegate
    keyFrameAnimation.duration = 1
    keyFrameAnimation.beginTime = CACurrentMediaTime() + 1 //add delay of 1 second
    let initalBounds = NSValue(cgRect: mask!.bounds)
    let secondBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 90, height: 90))
    let finalBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 1500, height: 1500))
    keyFrameAnimation.values = [initalBounds, secondBounds, finalBounds]
    keyFrameAnimation.keyTimes = [0, 0.3, 1]
    keyFrameAnimation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)]
    self.mask!.add(keyFrameAnimation, forKey: "bounds")
  }
  
  func animationDidStop(anim: CAAnimation, finished flag: Bool) {
    self.imageView!.layer.mask = nil //remove mask when animation completes
  }
  
}

