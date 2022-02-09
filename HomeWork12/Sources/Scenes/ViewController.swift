//
//  ViewController.swift
//  HomeWork12
//
//  Created by Ренат Сафин on 07.01.2022.
//
import UIKit

class ViewController: UIViewController {
    
    var data = [[SettingsCell]]()
    
    // MARK: - Views
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(Cell.self, forCellReuseIdentifier: Cell.identifireCell)
        tableView.register(SwitchCell.self, forCellReuseIdentifier: SwitchCell.identifireSwitchCell)
        tableView.register(NotificationCell.self, forCellReuseIdentifier: NotificationCell.identifierNotificationCell)
        tableView.rowHeight = Metric.tableViewRowHeight
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        setupLayout()
        setupViewNavigationBar()
        updateData(addTo: Sections.addCellsToSections())
    }
    
    // MARK: - Settings
    
    private func setupHierarhy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - SettingsNavigationBar
    
    private func setupViewNavigationBar() {
        view.backgroundColor = .white
        title = "Настройки"
    }
    
    // MARK: - UpdateData
    
    private func updateData(addTo: [[SettingsCell]]) -> [[SettingsCell]] {
        data.append(contentsOf: addTo)
        return data
    }
}

// MARK: - Constants

extension Metric {
    static let tableViewRowHeight: CGFloat = 55
}
