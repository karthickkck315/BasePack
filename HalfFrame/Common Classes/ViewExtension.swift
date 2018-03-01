//
//  ViewExtension.swift
//  QiQ
//
//  Created by Karthick on 11/12/17.
//  Copyright © 2017 Karthick. All rights reserved.
//Com.Live.PickApp
//com.demo.PickApp
import UIKit


extension UIView {
  
    func addTopBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:0, width:self.frame.size.width, height:width)
        self.layer.addSublayer(border)
    }
    
    func addRightBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame =  CGRect(x:self.frame.size.width - width, y:0, width: width, height:self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:self.frame.size.height - width, width:self.frame.size.width, height:width)
        self.layer.addSublayer(border)
    }
    
    func addLeftBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:0, width:width, height:self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    func addDashBorderWithColor(color: UIColor, width: CGFloat) {
        let dashBorder = CAShapeLayer()
        dashBorder.strokeColor = UIColor.black.cgColor
        dashBorder.lineDashPattern = [2, 2]
        dashBorder.frame = CGRect(x:0, y:0, width:width, height:self.frame.size.height)
        dashBorder.fillColor = nil
        dashBorder.path = UIBezierPath(rect: self.bounds).cgPath
        self.layer.addSublayer(dashBorder)
    }
  
  // OUTPUT 1
  func dropShadow(scale: Bool = true) {
    
    self.layer.shadowOpacity = 0.18
    self.layer.shadowOffset = CGSize(width: 0, height: 2)
    self.layer.shadowRadius = 2
    self.layer.shadowColor = UIColor.blue.cgColor
    self.layer.masksToBounds = false
    
    /*self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor.lightGray.cgColor
    self.layer.shadowOpacity = 0.5
    self.layer.shadowOffset = CGSize(width: -1, height: 1)
    self.layer.shadowRadius = 1
    self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    self.layer.shouldRasterize = true
    self.layer.rasterizationScale = UIScreen.main.scale*/
    
    
   /* self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOpacity = 0.5
    self.layer.shadowOffset = CGSize(width: -1, height: 0.5)
    self.layer.shadowRadius = 1
    
    self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    self.layer.shouldRasterize = true
    self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1*/
  }
  
  // OUTPUT 2
  func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
    self.layer.masksToBounds = false
    self.layer.shadowColor = color.cgColor
    self.layer.shadowOpacity = opacity
    self.layer.shadowOffset = offSet
    self.layer.shadowRadius = radius
    
    self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    self.layer.shouldRasterize = true
    self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }
  
}
@IBDesignable
extension UIView {
  // Shadow
  @IBInspectable var shadow: Bool {
    get {
      return layer.shadowOpacity > 0.0
    }
    set {
      if newValue == true {
        self.addShadow()
      }
    }
  }
  
  fileprivate func addShadow(shadowColor: CGColor = UIColor.black.cgColor, shadowOffset: CGSize = CGSize(width: 3.0, height: 3.0), shadowOpacity: Float = 0.35, shadowRadius: CGFloat = 5.0) {
    let layer = self.layer
    layer.masksToBounds = false
    
    layer.shadowColor = shadowColor
    layer.shadowOffset = shadowOffset
    layer.shadowRadius = shadowRadius
    layer.shadowOpacity = shadowOpacity
    layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: layer.cornerRadius).cgPath
    
    let backgroundColor = self.backgroundColor?.cgColor
    self.backgroundColor = nil
    layer.backgroundColor =  backgroundColor
  }
  
  
  // Corner radius
  @IBInspectable var circle: Bool {
    get {
      return layer.cornerRadius == self.bounds.width*0.5
    }
    set {
      if newValue == true {
        self.cornerRadius = self.bounds.width*0.5
      }
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return self.layer.cornerRadius
    }
    
    set {
      self.layer.cornerRadius = newValue
    }
  }
  
  
  // Borders
  // Border width
  @IBInspectable
  public var borderWidth: CGFloat {
    set {
      layer.borderWidth = newValue
    }
    
    get {
      return layer.borderWidth
    }
  }
  
  // Border color
  @IBInspectable
  public var borderColor: UIColor? {
    set {
      layer.borderColor = newValue?.cgColor
    }
    
    get {
      if let borderColor = layer.borderColor {
        return UIColor(cgColor: borderColor)
      }
      return nil
    }
  }
  //Set View backGroundColor
  @IBInspectable var backGroundColor : UIColor? {
    get {
      return self.backgroundColor
    }
    set {
      self.backgroundColor = newValue
    }
  }
}
