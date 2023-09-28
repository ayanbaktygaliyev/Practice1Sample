//
//  AppDelegate.swift
//  Practice1Sample
//
//  Created by Ernar Khasen on 15.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewModel = ViewModel()
        let vc = ViewController()
        vc.viewModel = viewModel
        let navVC = UINavigationController(rootViewController: vc)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        return true
    }
}

