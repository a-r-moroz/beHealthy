//
//  TabBar.swift
//  beHealthy
//
//  Created by Andrew Moroz on 2.08.22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let blur = UIBlurEffect(style: .regular)
//        let visualEffect = UIVisualEffectView(effect: blur)
//        visualEffect.frame = tabBar.bounds
//        tabBar.addSubview(visualEffect)
//        tabBar.sendSubviewToBack(visualEffect)
//        tabBar.isTranslucent = true
        setupControllers()
        
//        let appearance = tabBar.standardAppearance
//        appearance.shadowImage = nil
//        appearance.shadowColor = nil
//        tabBar.standardAppearance = appearance
        
        UITabBar.appearance().layer.borderWidth = 0
        UITabBar.appearance().clipsToBounds = true
        UITabBar.appearance().backgroundColor = .systemBackground
        UITabBar.appearance().isTranslucent = false
        
        UITabBar.appearance().tintColor = .systemMint
    }
    
    private func setupControllers() {
        
        let iconConfig = UIImage.SymbolConfiguration(scale: .large)
        
        let pillsVC = UINavigationController(rootViewController: PillsController())
        let exercisesVC = UINavigationController(rootViewController: ExercisesController())
        let profileVC = UINavigationController(rootViewController: ProfileController())
//        pillsVC.navigationBar.tintColor = UIColor(red: 140/255, green: 102/255, blue: 53/255, alpha: 1.0)
//        exercisesVC.navigationBar.tintColor = UIColor(red: 140/255, green: 102/255, blue: 53/255, alpha: 1.0)
//        profileVC.navigationBar.tintColor = UIColor(red: 140/255, green: 102/255, blue: 53/255, alpha: 1.0)
        pillsVC.tabBarItem = UITabBarItem(title: "Лекарства", image: UIImage(systemName: "pills")?.withConfiguration(iconConfig), tag: 0)
        exercisesVC.tabBarItem = UITabBarItem(title: "Упражнения", image: UIImage(systemName: "hare")?.withConfiguration(iconConfig), tag: 0)
        profileVC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person")?.withConfiguration(iconConfig), tag: 0)
        pillsVC.tabBarItem.selectedImage = UIImage(systemName: "pills.fill")
        exercisesVC.tabBarItem.selectedImage = UIImage(systemName: "hare.fill")
        profileVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        self.viewControllers = [pillsVC, exercisesVC, profileVC]
        

    }
}
