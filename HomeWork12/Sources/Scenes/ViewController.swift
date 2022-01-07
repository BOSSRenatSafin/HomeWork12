//
//  ViewController.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Views
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        setupLayout()
        setupViewNavigationBar()
    }
    
    // MARK: - Settings
    
    private func setupHierarhy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    // MARK: - SettingsNavigationBar
    
    private func setupViewNavigationBar() {
        view.backgroundColor = .white
        title = "Настройки"
    }
}

