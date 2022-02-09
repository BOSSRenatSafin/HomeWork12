//
//  Cell.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

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
        leadingLabel.font = UIFont.systemFont(ofSize: Metric.leadingLabelFont)
        leadingLabel.lineBreakMode = .byClipping
        return leadingLabel
    }()
    
    lazy var trailingLabel: UILabel = {
        var trailingLabel = UILabel()
        trailingLabel.lineBreakMode = .byClipping
        return trailingLabel
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarcy()
        setupLayout()
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    func setupHierarcy() {
        contentView.addSubview(imageIcon)
        contentView.addSubview(leadingLabel)
        contentView.addSubview(trailingLabel)
    }
    
    func setupLayout() {
        imageIcon.translatesAutoresizingMaskIntoConstraints = false
        imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Metric.imageIconLeading).isActive = true
        imageIcon.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: Metric.imageIconHeight).isActive =  true
        imageIcon.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: Metric.imageIconWidth).isActive = true
        
        leadingLabel.translatesAutoresizingMaskIntoConstraints = false
        leadingLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        leadingLabel.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor, constant: Metric.leadingLabel).isActive = true
        
        trailingLabel.translatesAutoresizingMaskIntoConstraints = false
        trailingLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        trailingLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: Metric.trailingLabel).isActive = true
    }
    
    // MARK: - Func
    
    public func configure(model: SettingsCell) {
        imageIcon.image = UIImage(systemName: model.nameImage)
        imageIcon.backgroundColor = model.colorImage
        leadingLabel.text = model.textLabel
        trailingLabel.text = model.trailingLabelText
    }
}

// MARK: - Constants

enum Metric {
    static let trailingLabel: CGFloat = -20
    static let leadingLabel: CGFloat = 20
    static let imageIconLeading: CGFloat = 20
    static let imageIconHeight: CGFloat = 0.7
    static let imageIconWidth: CGFloat = 0.7
    static let leadingLabelFont: CGFloat = 18
}
