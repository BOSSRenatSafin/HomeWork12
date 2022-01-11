//
//  TableViewDataSource.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 11.01.2022.
//

import UIKit

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = data[indexPath.section][indexPath.row]
        switch model.typeCell {
        case .cell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifireCell, for: indexPath) as? Cell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        case .switchCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifireSwitchCell, for: indexPath) as? SwitchCell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        case .notificationCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationCell.identifierNotificationCell, for: indexPath) as? NotificationCell else { return UITableViewCell() }
            cell.configure(model: model)
            return cell
        }
    }
}

