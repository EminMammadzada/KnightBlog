//
//  CustomTest.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/23/22.
//

import Foundation
import UIKit

@IBDesignable
class CustomLabel: UILabel{
    
    @IBInspectable var masksToBounds:CGFloat = 0{
        didSet{
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    //self.clipsToBounds = true
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
            
        }
    }
    
    var textEdgeInsets = UIEdgeInsets.zero {
            didSet { invalidateIntrinsicContentSize() }
        }
        
        open override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
            let insetRect = bounds.inset(by: textEdgeInsets)
            let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
            let invertedInsets = UIEdgeInsets(top: -textEdgeInsets.top, left: -textEdgeInsets.left, bottom: -textEdgeInsets.bottom, right: -textEdgeInsets.right)
            return textRect.inset(by: invertedInsets)
        }
        
        override func drawText(in rect: CGRect) {
            super.drawText(in: rect.inset(by: textEdgeInsets))
        }
        
        @IBInspectable
        var paddingLeft: CGFloat {
            set { textEdgeInsets.left = newValue }
            get { return textEdgeInsets.left }
        }
        
        @IBInspectable
        var paddingRight: CGFloat {
            set { textEdgeInsets.right = newValue }
            get { return textEdgeInsets.right }
        }
        
        @IBInspectable
        var paddingTop: CGFloat {
            set { textEdgeInsets.top = newValue }
            get { return textEdgeInsets.top }
        }
        
        @IBInspectable
        var paddingBottom: CGFloat {
            set { textEdgeInsets.bottom = newValue }
            get { return textEdgeInsets.bottom }
        }
}

@IBDesignable
class CustomTopic: UILabel{
    @IBInspectable var masksToBounds:CGFloat = 0{
        didSet{
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    //self.clipsToBounds = true
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
            
        }
    }
}
