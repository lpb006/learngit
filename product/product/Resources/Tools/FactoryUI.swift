//
//  FactoryUI.swift
//  生活小助手
//
//  Created by 千锋 on 16/9/9.
//  Copyright © 2016年 千锋. All rights reserved.
//

import UIKit

class FactoryUI: NSObject {
    // UIView
    static func createView(frame:CGRect) -> UIView {
        let view = UIView(frame: frame)
        return view
    }

    // UILabel
    static func createLabel(frame:CGRect,text:String,textColor:UIColor?,font:UIFont?,textAligment:NSTextAlignment?) -> UILabel {
        let label = UILabel(frame: frame)
        label.text = text
        label.textColor = textColor
        label.font = font
        if textAligment != nil {
            label.textAlignment = textAligment!
        }
        
        return label
        
    }
    
    // UIButton
    static func createButton(type:UIButtonType,frame:CGRect,title:String?,titleColor:UIColor?,imageName:String?,backgroundImageName:String?,target:AnyObject,action:Selector) -> UIButton {
        let button = UIButton(type: type)
        button.frame = frame
        button.setTitle(title, forState: .Normal)
        button.setTitleColor(titleColor, forState: .Normal)
        if imageName != nil {
            button.setImage(UIImage(named: imageName!), forState: .Normal)
        }
        if backgroundImageName != nil {
            button.setImage(UIImage(named: backgroundImageName!), forState: .Selected)
        }
        
        button.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        
        return button
        
    }
    
    // UIImageView
    static func createimageView(frame:CGRect,imageName:String?) -> UIImageView {
        let imageView = UIImageView(frame: frame)
        if imageName != nil {
            imageView.image = UIImage(named: imageName!)
        }
        
        return imageView
    }
    
    // UITextField
    static func createTextField (frame:CGRect,text:String?,placeholder:String,leftView:UIView?,rightView:UIView?) -> UITextField {
        let textField  = UITextField(frame: frame)
        textField.text = text
        textField.placeholder = placeholder
        
        textField.leftView = leftView
        textField.rightView = rightView
        
        return textField
    }
    
}










