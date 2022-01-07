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
        tableView.dataSource = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        setupLayout()
        setupViewNavigationBar()
        updateData(addTo: FirstSection.addCellsToSection())
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = data[indexPath.section][indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifireCell, for: indexPath) as? Cell else { return UITableViewCell() }
        cell.config(mod: model)
        return cell
    }
}
