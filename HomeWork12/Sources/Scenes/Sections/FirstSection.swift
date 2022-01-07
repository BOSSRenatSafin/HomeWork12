//
//  FirstSection.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

class FirstSection: UITableViewCell {
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    static func addCellsToSection() -> [[SettingsCell]] {
        return [[SettingsCell(nameImage: "airplane",
                              colorImage: .systemOrange,
                              textLabel: "Авиарежим",
                              typeCell: .switchCell,
                              trailingLabelText: nil,
                              notificationLabelText: nil
                             ),
                 SettingsCell(nameImage: "wifi",
                              colorImage: .link,
                              textLabel: "Wi-fi",
                              typeCell: .cell,
                              trailingLabelText: "Не подключен",
                              notificationLabelText: nil
                             ),
                 SettingsCell(nameImage: "wifi",
                              colorImage: .systemBlue,
                              textLabel: "bluetooth",
                              typeCell: .cell,
                              trailingLabelText: "Выкл.",
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "antenna.radiowaves.left.and.right",
                              colorImage: .systemGreen,
                              textLabel: "Сотовая связь",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "personalhotspot",
                              colorImage: .systemGreen,
                              textLabel: "Режим модема",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "personalhotspot",
                              colorImage: .link,
                              textLabel: "VPN",
                              typeCell: .switchCell,
                              trailingLabelText: nil,
                              notificationLabelText: nil)
                ]]
    }
}
