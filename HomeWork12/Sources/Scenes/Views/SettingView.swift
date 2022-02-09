//
//  SettingView.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 09.02.2022.
//

import UIKit

class SettingView: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(ViewCell.self, forCellReuseIdentifier: ViewCell.identifireCell)
        tableView.register(SwitchViewCell.self, forCellReuseIdentifier: SwitchViewCell.identifireSwitchCell)
        tableView.register(NotificationViewCell.self, forCellReuseIdentifier: NotificationViewCell.identifierNotificationCell)
        tableView.rowHeight = Metric.tableViewRowHeight
        
        tableView.dataSource = self
        tableView.delegate = self
        
        return tableView
    }()
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}
