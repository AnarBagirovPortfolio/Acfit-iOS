//
//  ActivityIndicatorController.swift
//  ProjectFitry
//
//  Created by Faannaka on 09.05.17.
//  Copyright © 2017 Anar Baghirov. All rights reserved.
//

import Foundation
import UIKit

class ActivityIndicatorController {
    
    private let container: UIView = UIView()
    private let loadingView: UIView = UIView()
    private let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    private let view: UIView
    
    init(_ view: UIView) {
        container.frame = view.frame
        container.center = view.center
        container.backgroundColor = UIColor(hex: 0xFFFFFF, alpha: 0.3)
        
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = view.center
        loadingView.backgroundColor = UIColor(hex: 0x444444, alpha: 0.7)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        activityIndicator.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2)
        
        loadingView.addSubview(activityIndicator)
        container.addSubview(loadingView)
        
        self.view = view
    }
    
    func show() {
        view.addSubview(container)
        activityIndicator.startAnimating()
    }
    
    func hide() {
        activityIndicator.stopAnimating()
        container.removeFromSuperview()
    }
    
}


