//
//  ViewController.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

class SettingsController: UIViewController {
    
    static var settingsModel = SettingsModel.createModel()
    
    private var settingView: SettingView? {
        guard isViewLoaded else { return nil }
        return view as? SettingView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SettingView()
        customizeLabelToNavigationBar()
        configureView()
    }
    
    // MARK: - SettingsNavigationBar
    
    private func customizeLabelToNavigationBar() {
        title = "Настройки"
    }
    
    private func configureView() {
        guard let model = settingView?.tableView else {return}
        model.dataSource = self.settingView
        model.delegate = self.settingView
        
        model.register(ViewCell.self, forCellReuseIdentifier: ViewCell.identifireCell)
        model.register(SwitchViewCell.self, forCellReuseIdentifier: SwitchViewCell.identifireSwitchCell)
        model.register(NotificationViewCell.self, forCellReuseIdentifier: NotificationViewCell.identifierNotificationCell)
    }
}

// MARK: - UITableViewDataSource

extension SettingView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingsController.settingsModel.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.settingsModel[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = SettingsController.settingsModel[indexPath.section][indexPath.row]
        switch model.typeCell {
        case .cell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewCell.identifireCell, for: indexPath) as? ViewCell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        case .switchCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchViewCell.identifireSwitchCell, for: indexPath) as? SwitchViewCell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        case .notificationCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationViewCell.identifierNotificationCell, for: indexPath) as? NotificationViewCell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        }
    }
}

// MARK: - UITableViewDelegate

extension SettingView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = SettingsController.settingsModel[indexPath.section][indexPath.row]
        
        switch model.typeCell {
        case .cell:
            print(model.textLabel)
        case .switchCell:
            print(model.textLabel)
        case .notificationCell:
            print(model.textLabel)
        }
    }
}

