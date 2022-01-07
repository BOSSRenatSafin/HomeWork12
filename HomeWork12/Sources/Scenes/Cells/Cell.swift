//
//  Cell.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
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

class Cell: UITableViewCell {
    
    static let identifireCell = "Cell"
    
    // MARK: - Views
    
    lazy var imageIcon: UIImageView = {
        let imageIcon = UIImageView()
        imageIcon.layer.cornerRadius = 8
        imageIcon.tintColor = .white
        imageIcon.contentMode = .center
        return imageIcon
    }()
    
    lazy var leadingLabel: UILabel = {
        var leadingLabel = UILabel()
        leadingLabel.font = UIFont.systemFont(ofSize: 18)
        leadingLabel.lineBreakMode = .byClipping
        return leadingLabel
    }()
    
    lazy var trailingLabel: UILabel = {
        var trailingLabel = UILabel()
        trailingLabel.lineBreakMode = .byClipping
        return trailingLabel
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
        setupHierarcy()
        setupHierarcyToOverride()
        setupLayout()
        setupLayoutToOverride()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    private func setupHierarcy() {
        contentView.addSubview(imageIcon)
        contentView.addSubview(leadingLabel)
    }
    
    func setupHierarcyToOverride() {
        contentView.addSubview(imageNextPage)
        contentView.addSubview(trailingLabel)
    }
    
    private func setupLayout() {
        imageIcon.translatesAutoresizingMaskIntoConstraints = false
        imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        imageIcon.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive =  true
        imageIcon.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
        
        
        leadingLabel.translatesAutoresizingMaskIntoConstraints = false
        leadingLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        leadingLabel.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: 20).isActive = true
    }
    
    func setupLayoutToOverride() {
        imageNextPage.translatesAutoresizingMaskIntoConstraints = false
        imageNextPage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageNextPage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        imageNextPage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4).isActive =  true
        imageNextPage.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4).isActive = true
        
        trailingLabel.translatesAutoresizingMaskIntoConstraints = false
        trailingLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        trailingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50).isActive = true
    }
    // MARK: - Func
    
    public func config(mod: SettingsCell) {
        imageIcon.image = UIImage(systemName: mod.nameImage)
        imageIcon.backgroundColor = mod.colorImage
        leadingLabel.text = mod.textLabel
        trailingLabel.text = mod.trailingLabelText
    }
}
