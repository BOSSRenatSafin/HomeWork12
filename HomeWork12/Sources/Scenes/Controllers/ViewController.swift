//
//  ViewController.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

class SettingsController: UIViewController {
    
    static var data = [[SettingsCell]]()
    
    private var onboardinView: SettingView? {
        guard isViewLoaded else { return nil }
        return view as? SettingView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingView()
        setupViewNavigationBar()
        updateData(addTo: SettingsModel.addCellsToSections())
    }
    
    // MARK: - SettingsNavigationBar
    
    private func setupViewNavigationBar() {
        title = "Настройки"
    }
    
    // MARK: - UpdateData
    
    private func updateData(addTo: [[SettingsCell]]) -> [[SettingsCell]] {
        SettingsController.data.append(contentsOf: addTo)
        return SettingsController.data
    }
}


