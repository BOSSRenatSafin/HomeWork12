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
        return [[SettingsCell(nameImage: "wifi",
                              colorImage: .link,
                              textLabel: "Wi-fi",
                              typeCell: .cell,
                              trailingLabelText: "Не подключен",
                              notificationLabelText: nil
                             )
                ]]
    }
    
}
