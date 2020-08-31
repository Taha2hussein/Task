//
//  tabBarRouter.swift
//  
//
//  Created by A on 8/17/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
class tabBarRouter{
    var viewController : UIViewController
    typealias subModules  = (
         home:UIViewController,
         notes : UIViewController,
         notifications: UIViewController,
         setting:UIViewController
        
    )
    init(viewController:UIViewController) {
        self.viewController = viewController
    }
}


extension tabBarRouter{
    static func tabs(subModules:subModules) -> instagramModules{
        
        let home = UITabBarItem(title: "", image: UIImage(named: "home_unselected"), selectedImage: UIImage(named: "home_selected"))
        let notes = UITabBarItem(title: "", image: UIImage(named: "search_unselected"), selectedImage: UIImage(named: "search_selected"))
        let notifications = UITabBarItem(title: "", image: UIImage(named: "profile_unselected"), selectedImage: UIImage(named: "profile_selected"))
        let setting = UITabBarItem(title: "", image: UIImage(named: "like_unselected"), selectedImage: UIImage(named: "like_selected"))
      
    
        subModules.home.tabBarItem = home
        subModules.notes.tabBarItem = notes
        subModules.notifications.tabBarItem = notifications
        subModules.setting.tabBarItem = setting
        
        return (
            home : subModules.home,
            notes : subModules.notes,
            notifications : subModules.notifications,
            setting : subModules.setting
        )
    
    }
}
