//
//  AppDelegate.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationBar = UINavigationController(rootViewController: ViewController())
        
        window?.rootViewController = navigationBar
        window?.makeKeyAndVisible()
        return true
    }
}

