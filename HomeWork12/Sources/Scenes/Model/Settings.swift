//
//  Settings.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 09.02.2022.
//

import UIKit

struct SettingsCell {
    let nameImage: String
    let colorImage: UIColor
    let textLabel: String
    let typeCell: TypeCell
    let trailingLabelText: String?
    let notificationLabelText: String?
}

enum TypeCell {
    case cell
    case switchCell
    case notificationCell
}
