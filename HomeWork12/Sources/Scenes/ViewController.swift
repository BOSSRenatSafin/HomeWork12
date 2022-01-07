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
        tableView.rowHeight = 55
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
        updateData(addTo: FirstSection.addCellsToSection())
        updateData(addTo: SecondSection.addCellsToSection())
        updateData(addTo: ThirdSection.addCellsToSection())
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

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = data[indexPath.section][indexPath.row]
        switch model.typeCell {
        case .cell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifireCell, for: indexPath) as? Cell else { return UITableViewCell() }
            cell.config(mod: model)
            return cell
        case .switchCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifireSwitchCell, for: indexPath) as? SwitchCell else { return UITableViewCell() }
            cell.config(mod: model)
            return cell
        case .notificationCell:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationCell.identifierNotificationCell, for: indexPath) as? NotificationCell else { return UITableViewCell() }
            cell.config(mod: model)
            return cell
        }
    }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = data[indexPath.section][indexPath.row]
        
        switch model.typeCell {
        case .cell:
            print(model.textLabel)
        case .switchCell:
            print(model.textLabel)
        case .notificationCell:
            print(model.textLabel)
        }
    }
}
