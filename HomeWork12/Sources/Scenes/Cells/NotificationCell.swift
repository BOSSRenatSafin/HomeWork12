//
//  NotificationCell.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//

import UIKit

class NotificationCell: Cell {
    
    static let identifierNotificationCell = "NotificationCell"
    
    // MARK: - Views
    
    private lazy var notificationLabelContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.addSubview(notificationLabel)
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var notificationLabel: UILabel = {
       let label = UILabel()
        label.textColor = .white
        label.numberOfLines = 1
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        return label
    }()
    
    private lazy var imageNextPage: UIImageView = {
        var imageNext = UIImageView()
        imageNext.image = UIImage(systemName: "chevron.right")
        imageNext.tintColor = UIColor.systemGray
        return imageNext
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
        contentView.addSubview(notificationLabelContainer)
        contentView.addSubview(imageNextPage)
    }
    
    override func setupLayoutToOverride() {
        notificationLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        notificationLabelContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        notificationLabelContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50).isActive = true
        notificationLabelContainer.heightAnchor.constraint(equalToConstant: 30).isActive =  true
        notificationLabelContainer.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        notificationLabel.translatesAutoresizingMaskIntoConstraints = false
        notificationLabel.centerYAnchor.constraint(equalTo: notificationLabelContainer.centerYAnchor).isActive = true
        notificationLabel.centerXAnchor.constraint(equalTo: notificationLabelContainer.centerXAnchor).isActive = true
        notificationLabel.widthAnchor.constraint(equalToConstant: 10).isActive = true
        notificationLabel.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        imageNextPage.translatesAutoresizingMaskIntoConstraints = false
        imageNextPage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageNextPage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        imageNextPage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4).isActive =  true
        imageNextPage.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4).isActive = true
    }
    
    override public func config(mod: SettingsCell) {
        imageIcon.image = UIImage(systemName: mod.nameImage)
        imageIcon.backgroundColor = mod.colorImage
        leadingLabel.text = mod.textLabel
        trailingLabel.text = mod.trailingLabelText
        notificationLabel.text = mod.notificationLabelText
    }
}

