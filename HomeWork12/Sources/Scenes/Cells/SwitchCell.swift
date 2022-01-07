//
//  SwitchCell.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//

import UIKit

class SwitchCell: Cell {
    
    static let identifireSwitchCell = "SwitchCell"
    
    // MARK: - Views
    
    private lazy var toSwitch: UISwitch = {
        let toSwitch = UISwitch()
        toSwitch.onTintColor = .systemBlue
        return toSwitch
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarcyToOverride()
        setupLayoutToOverride()    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    override func setupHierarcyToOverride() {
        contentView.addSubview(toSwitch)
    }
    
    override func setupLayoutToOverride() {
        toSwitch.translatesAutoresizingMaskIntoConstraints = false
        toSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        toSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
    }
}
