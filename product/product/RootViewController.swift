//
//  RootViewController.swift
//  生活小助手
//
//  Created by 千锋 on 16/9/9.
//  Copyright © 2016年 千锋. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    // 按钮
    var leftButton:UIButton?
    var rightButton:UIButton?
    // 标题
    var titleLabel:UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置背景颜色
        self.view.backgroundColor = UIColor.whiteColor()
        // 导航的颜色
        //self.navigationController?.navigationBar.barTintColor = myColor
        // 导航栏不透明
        self.navigationController?.navigationBar.translucent = false
        //左按钮
        self.leftButton = UIButton(type: UIButtonType.Custom)
        self.leftButton?.frame = CGRectMake(0, 0, 44, 44)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: self.leftButton!)
        
        //标题
        self.titleLabel = FactoryUI.createLabel(CGRectMake(0, 0, 100, 44), text: "", textColor: UIColor.grayColor(), font: UIFont.boldSystemFontOfSize(20), textAligment: NSTextAlignment.Center)
        self.navigationItem.titleView = self.titleLabel
        
        //右按钮
        self.rightButton = UIButton(type: UIButtonType.Custom)
        self.rightButton?.frame = CGRectMake(0, 0, 44, 44)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: self.rightButton!)
        
    }
    
    //定义实例方法--按钮的响应方法
    //左按钮
    func addLeftButtonAction(selector:Selector) {
        self.leftButton?.addTarget(self, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    //右按钮
    func addRightButtonAction(selector:Selector) {
        self.rightButton?.addTarget(self, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
