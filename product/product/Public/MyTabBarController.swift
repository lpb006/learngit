//
//  MyTabBarController.swift
//  product
//
//  Created by 千锋 on 16/10/9.
//  Copyright © 2016年 千锋. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        creatUI()
    }

    func creatUI() {
        let vc1 = MusicViewController()
        let nav1 = UINavigationController(rootViewController: vc1)
        let vc2 = YYMViewController()
        let nav2 = UINavigationController(rootViewController: vc2)
        let vc3 = MyViewController()
        let nav3 = UINavigationController(rootViewController: vc3)
        
        self.viewControllers = [nav1,nav2,nav3]
        
        let vcArray = [vc1,vc2,vc3]
        let navArray = [nav1,nav2,nav3]
        let titleArray = ["音乐","XX","设置"]
        
        for i in 0...2 {
            let vc = vcArray[i]
            vc.navigationController?.title = titleArray[i]
            // 设置导航栏颜色
            vc.navigationController?.navigationBar.barTintColor = UIColor.cyanColor()
            
        }
        
        // 设置tabBar
        for i in 0...2 {
            let nav = navArray[i]
            nav.tabBarItem.title = titleArray[i]
            nav.tabBarItem.image = UIImage(named: "\(i)")?.imageWithRenderingMode(.AlwaysOriginal)
            nav.tabBarItem.selectedImage = UIImage(named: "\(i)"+"_")?.imageWithRenderingMode(.AlwaysOriginal)
        }
        // 设置tabBar颜色
        //self.tabBar.barTintColor =
        // 设置字体颜色
        self.tabBar.tintColor = UIColor.redColor()
        
        
        
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
