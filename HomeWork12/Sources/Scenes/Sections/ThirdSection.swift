//
//  ThirdSection.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//

import UIKit

class ThirdSection: UITableViewCell {
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    static func addCellsToSection() -> [[SettingsCell]] {
        return [[SettingsCell(nameImage: "gear",
                              colorImage: .systemRed,
                              textLabel: "Основные",
                              typeCell: .notificationCell,
                              trailingLabelText: nil,
                              notificationLabelText: "1"
                             ),
                 SettingsCell(nameImage: "switch.2",
                              colorImage: .systemYellow,
                              textLabel: "Пункт управления",
                              typeCell: .cell,
                             trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "textformat.size",
                              colorImage: .systemBlue,
                              textLabel: "Экран и ркость",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "checkerboard.rectangle",
                              colorImage: .systemBlue,
                              textLabel: "Экран домой",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "figure.wave.circle.fill",
                              colorImage: .systemBlue,
                              textLabel: "Универсальный доступ",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil)
                ]]
    }
    
}

