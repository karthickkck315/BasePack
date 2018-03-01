//
//  UnderlineLabelExtension.swift
//  PickApp
//
//  Created by karthick on 11/6/17.
//  Copyright © 2017 Com. All rights reserved.
//

import UIKit

    extension UITapGestureRecognizer {
        
        func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
            // Create instances of NSLayoutManager, NSTextContainer and NSTextStorage
            let layoutManager = NSLayoutManager()
            let textContainer = NSTextContainer(size: CGSize.zero)
            let textStorage = NSTextStorage(attributedString: label.attributedText!)
            
            // Configure layoutManager and textStorage
            layoutManager.addTextContainer(textContainer)
            textStorage.addLayoutManager(layoutManager)
            
            // Configure textContainer
            textContainer.lineFragmentPadding = 0.0
            textContainer.lineBreakMode = label.lineBreakMode
            textContainer.maximumNumberOfLines = label.numberOfLines
            let labelSize = label.bounds.size
            textContainer.size = labelSize
            
            // Find the tapped character location and compare it to the specified range
            let locationOfTouchInLabel = self.location(in: label)
            let textBoundingBox = layoutManager.usedRect(for: textContainer)
            
            let textContainerOffset = CGPoint(x:(labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x, y:(labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y)
            
            let locationOfTouchInTextContainer = CGPoint(x:locationOfTouchInLabel.x - textContainerOffset.x, y:locationOfTouchInLabel.y - textContainerOffset.y);
            
            let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
            
            return NSLocationInRange(indexOfCharacter, targetRange)
        }
        
    }


class UIPaddingLabel: UILabel
{
    var topInset:       CGFloat = 0
    var rightInset:     CGFloat = 5
    var bottomInset:    CGFloat = 0
    var leftInset:      CGFloat = 5
    
    override func drawText(in rect: CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: self.topInset, left: self.leftInset, bottom: self.bottomInset, right: self.rightInset)
        self.setNeedsLayout()
        return super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}
