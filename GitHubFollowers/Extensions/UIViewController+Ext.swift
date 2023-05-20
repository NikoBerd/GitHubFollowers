//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Niko on 18.03.23.
//

import UIKit

fileprivate var containerView: UIView!

extension UIViewController {

  func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
    DispatchQueue.main.async {
      let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
      alertVC.modalPresentationStyle  = .overFullScreen
      alertVC.modalTransitionStyle    = .crossDissolve
      self.present(alertVC, animated: true)
    }
  }


  func showLoadingView() { }


  func dismissLoadingView() { }


  func showEmptyStateView(with message: String, in view: UIView) {
    let emptyStateView = GFEmptyStateView(message: message)
    emptyStateView.frame = view.bounds
    view.addSubview(emptyStateView)
  }
}
