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
        view.layer.cornerRadius = Metric.viewCornerRadius
        view.layer.masksToBounds = true
        view.addSubview(notificationLabel)
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var notificationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.lineBreakMode = .byClipping
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    override func setupHierarcy() {
        super.setupHierarcy()
        contentView.addSubview(notificationLabelContainer)
    }
    
    override func setupLayout() {
        super.setupLayout()
        notificationLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        notificationLabelContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        notificationLabelContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: Metric.notificationLabelContainerTrailing).isActive = true
        notificationLabelContainer.heightAnchor.constraint(equalToConstant: Metric.notificationLabelContainerHeight).isActive =  true
        notificationLabelContainer.widthAnchor.constraint(equalToConstant: Metric.notificationLabelContainerWhidth).isActive = true
        
        notificationLabel.translatesAutoresizingMaskIntoConstraints = false
        notificationLabel.centerYAnchor.constraint(equalTo: notificationLabelContainer.centerYAnchor).isActive = true
        notificationLabel.centerXAnchor.constraint(equalTo: notificationLabelContainer.centerXAnchor).isActive = true
        notificationLabel.widthAnchor.constraint(equalToConstant: Metric.notificationLabelWidth).isActive = true
        notificationLabel.heightAnchor.constraint(equalToConstant: Metric.notificationLabelHeight).isActive = true
    }
    
    override public func configure(model: SettingsCell) {
        imageIcon.image = UIImage(systemName: model.nameImage)
        imageIcon.backgroundColor = model.colorImage
        leadingLabel.text = model.textLabel
        trailingLabel.text = model.trailingLabelText
        notificationLabel.text = model.notificationLabelText
    }
}

// MARK: - Constants

extension Metric {
    static let notificationLabelWidth: CGFloat = 10
    static let notificationLabelHeight: CGFloat = 10
    static let notificationLabelContainerWhidth: CGFloat = 30
    static let notificationLabelContainerHeight: CGFloat = 30
    static let notificationLabelContainerTrailing: CGFloat = -20
    static let viewCornerRadius: CGFloat = 15
}
