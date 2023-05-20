//
//  SceneDelegate.swift
//  GitHubFollowers
//
//  Created by Niko on 17.03.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    // UIWindow basically ignoring safe area
    window = UIWindow(frame: windowScene.coordinateSpace.bounds)
    // Set the window scene for the window
    window?.windowScene = windowScene
    // Set the root view controller for the window to a newly created tab bar controller
    window?.rootViewController = createTabBar()
    // Make the window key and visible
    window?.makeKeyAndVisible()

    configureNavigationBar()
  }
  


  func createSearchNavigationController() -> UINavigationController {
    // Create a new instance of the SearchVC view controller
    let searchVC = SearchVC()
    // Set the title of the searchVC view controller to "Search"
    searchVC.title = "Search"
    // Create a new tab bar item for the searchVC view controller with the system "search" icon and tag "0"
    searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
    // Create a new instance of UINavigationController with searchVC as its root view controller
    return UINavigationController(rootViewController: searchVC)
  }



//  func createFavoritesNavigationController() -> UINavigationController {
//    // Create a new instance of the FavoritesListVC view controller
//    let favoritesListVC = FavoritesListVC()
//    // Set the title of the favoritesListVC view controller to "Favorites"
//    favoritesListVC.title = "Favorites"
//    // Create a new tab bar item for the favoritesListVC view controller with the system "favorites" icon and tag "1"
//    favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
//    // Create a new instance of UINavigationController with favoritesListVC as its root view controller
//    return UINavigationController(rootViewController: favoritesListVC)
//  }


  func createTabBar() -> UITabBarController {
    let tabbar = UITabBarController()
    // Tint color
    UITabBar.appearance().tintColor = .systemGreen
    // Tab bar holding nav controllers
    tabbar.viewControllers = [createSearchNavigationController()]
    //tabbar.viewControllers = [createSearchNavigationController(), createFavoritesNavigationController()]
    return tabbar
  }


  func configureNavigationBar() {
    UINavigationBar.appearance().tintColor = .systemGreen
  }


  //MARK: - Scenes
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
  }

  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }

  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }

  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }

  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }


}

