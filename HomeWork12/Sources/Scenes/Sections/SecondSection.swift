//
//  SecondSection.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

class SecondSection: UITableViewCell {
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    static func addCellsToSection() -> [[SettingsCell]] {
        return [[SettingsCell(nameImage: "bell.badge",
                              colorImage: .systemRed,
                              textLabel: "Уведомление",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil
                             ),
                 SettingsCell(nameImage: "speaker.wave.3",
                              colorImage: .systemYellow,
                              textLabel: "Звуки, тактильные сигналы",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "moon.fill",
                              colorImage: .systemIndigo,
                              textLabel: "Фокусирование",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil),
                 SettingsCell(nameImage: "hourglass",
                              colorImage: .systemIndigo,
                              textLabel: "Экранное время",
                              typeCell: .cell,
                              trailingLabelText: nil,
                              notificationLabelText: nil)
                ]]
    }
}
