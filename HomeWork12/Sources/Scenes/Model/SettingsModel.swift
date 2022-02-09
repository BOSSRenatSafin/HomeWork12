//
//  SettingsModel.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 09.02.2022.
//

import Foundation

class Sections {
    
    static func addCellsToSections() -> [[SettingsCell]] {
        return [
            // MARK: - FirstSection
            [SettingsCell(nameImage: "airplane",
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
            ],
            // MARK: - SecondSection
            [SettingsCell(nameImage: "bell.badge",
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
            ],
            // MARK: - ThirdSection
            [SettingsCell(nameImage: "gear",
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
