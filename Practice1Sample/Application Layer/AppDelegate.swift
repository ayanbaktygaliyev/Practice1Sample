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
        //in this application, there is no need for NavigationController, as we have only 1 page, vc
//        let navVC = UINavigationController(rootViewController: vc)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        //as I have removed NavigationController, changed the rootViewController to vc, as a main ViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

