//
//  UIFont+CustomFont.swift
//  Hoovene
//
//  Created by Karthick on 12/06/17.
//  Copyright © 2017 Technoduce. All rights reserved.
//

import UIKit

//MARK: - Set Font Name

enum FontName: String {
  
  case regular      = "Roboto-Regular"
  case bold         = "Roboto-Bold"
  case Light        = "Roboto-Light"
  case BoldItalic   = "Roboto-BoldItalic"
  case Thin         = "Roboto-Thin"
  case MediumItalic = "Roboto-MediumItalic"
  case Medium       = "Roboto-Medium"
  case Black        = "Roboto-Black"
  case BlackItalic  = "Roboto-BlackItalic"
  case Italic       = "Roboto-Italic"
  case ThinItalic   = "Roboto-ThinItalic"
  
}

//MARK: - Set Font Size
enum FontSize: CGFloat {
    case size10 = 10
    case size12 = 12
    case size14 = 14
    case size16 = 16
    case size20 = 20
    case size22 = 22
}

extension UIFont {
    
    //MARK: - Bold Font
  class var boldFont10: UIFont {
        return UIFont(name: FontName.bold.rawValue, size:FontSize.size10.rawValue )!
    
    }
  class var boldFont12: UIFont {
        return UIFont(name: FontName.bold.rawValue, size: FontSize.size12.rawValue)!
    }
  class var boldFont14: UIFont {
        return UIFont(name: FontName.bold.rawValue, size: FontSize.size14.rawValue)!
    }
  class var boldFont16: UIFont {
        return UIFont(name: FontName.bold.rawValue, size: FontSize.size16.rawValue)!
    }
  class var boldFont20: UIFont {
        return UIFont(name: FontName.bold.rawValue, size: FontSize.size20.rawValue)!
    }
  class var boldFont22: UIFont {
        return UIFont(name: FontName.bold.rawValue, size: FontSize.size22.rawValue)!
    }
    
    //MARK: - Regular Font
  class var regularFont10: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size10.rawValue)!
    }
  class var regularFont12: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size12.rawValue)!
    }
  class var regularFont14: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size14.rawValue)!
    }
  class var regularFont16: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size16.rawValue)!
    }
  class var regularFont20: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size20.rawValue)!
    }
  class var regularFont22: UIFont {
        return UIFont(name: FontName.regular.rawValue, size: FontSize.size22.rawValue)!
    }
  
  
  //MARK: - boldItalic Font
  class var boldItalicFont10: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size10.rawValue)!
  }
  class var boldItalicFont12: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size12.rawValue)!
  }
  class var boldItalicFont14: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size14.rawValue)!
  }
  class var boldItalicFont16: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size16.rawValue)!
  }
  class var boldItalicFont20: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size20.rawValue)!
  }
  class var boldItalicFont22: UIFont {
    return UIFont(name: FontName.BoldItalic.rawValue, size: FontSize.size22.rawValue)!
  }
  
  //MARK: - light Font
  class var lightFont10: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size10.rawValue)!
  }
  class var lightFont12: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size12.rawValue)!
  }
  class var lightFont14: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size14.rawValue)!
  }
  class var lightFont16: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size16.rawValue)!
  }
  class var lightFont20: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size20.rawValue)!
  }
  class var lightFont22: UIFont {
    return UIFont(name: FontName.Light.rawValue, size: FontSize.size22.rawValue)!
  }
  
}

