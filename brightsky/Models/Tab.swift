//
//  Tab.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/23/23.
//

import Foundation
import UIKit

class Tab {
    
    let title: String
    let icon: String
    let viewController: UIViewController.Type;
    
    init(title: String, icon: String, viewController: UIViewController.Type) {
        self.title = title;
        self.icon = icon;
        self.viewController = viewController
    }
}
