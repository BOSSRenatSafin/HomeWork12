//
//  TableViewDelegate.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 11.01.2022.
//

import UIKit

// MARK: - UITableViewDelegate

extension SettingView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = ViewController.data[indexPath.section][indexPath.row]
        
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
