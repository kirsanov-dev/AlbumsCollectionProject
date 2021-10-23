//
//  TabBarController.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let mediaLibraryVC = UINavigationController(rootViewController: MediaLibraryViewController())
        mediaLibraryVC.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(named: "media"), tag: 0)
        let personalVС = UINavigationController(rootViewController: PersonalViewController())
        personalVС.tabBarItem = UITabBarItem(title: "Для вас", image: UIImage(named: "heart"), tag: 1)
        let albumsVC = UINavigationController(rootViewController: AlbumsViewController())
        albumsVC.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(named: "stack"), tag: 2)
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(named: "search"), tag: 3)
    
        setViewControllers([mediaLibraryVC,
                            personalVС,
                            albumsVC,
                            searchVC], animated: true)

        selectedIndex = 2
    }
}

