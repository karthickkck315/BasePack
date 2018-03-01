//
//  ImageExtension.swift
//  HalfFrame
//
//  Created by Karthick on 1/30/18.
//  Copyright © 2018 Karthick. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
  
  func tint(with color: UIColor) -> UIImage {
    var image = withRenderingMode(.alwaysTemplate)
    UIGraphicsBeginImageContextWithOptions(size, false, scale)
    color.set()
    
    image.draw(in: CGRect(origin: .zero, size: size))
    image = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()
    return image
  }
}
