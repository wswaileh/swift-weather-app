//
//  TabViewController.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/23/23.
//

import UIKit

class TabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabs = [
            Tab(title: "Weather", icon: "sun.min", viewController: WeatherViewController.self),
            Tab(title: "Settings", icon: "gear", viewController: SettingsViewController.self),
        ]
        
        setViewControllers(
            getNavs(tabs: tabs),
            animated: true
        )
    }
    
    private func getNavs(tabs: [Tab]) -> [UINavigationController] {
        var arr: [UINavigationController] = [];
        for (i, tabDef) in tabs.enumerated() {
            let tabObj = tabDef.viewController.init()
            tabObj.title = tabDef.title
            let nav: UINavigationController = UINavigationController(rootViewController: tabObj)
            nav.tabBarItem = UITabBarItem(title: tabDef.title, image: UIImage(systemName: tabDef.icon), tag: i+1)
            arr.append(nav);
        }
        return arr;
    }
    
    
    
    
}
