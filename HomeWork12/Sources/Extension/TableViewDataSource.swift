//
//  TableViewDataSource.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 11.01.2022.
//

import UIKit

// MARK: - UITableViewDataSource

extension SettingView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ViewController.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = ViewController.data[indexPath.section][indexPath.row]
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

