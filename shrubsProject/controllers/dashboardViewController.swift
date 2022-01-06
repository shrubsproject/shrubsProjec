//
//  dashboardViewController.swift
//  shrubsProject
//
//  Created by Ilya Egorov on 02.01.2022.
//

import UIKit

final class dashboardViewController: UIViewController {
    
    let startGameButton: ShadowButton = ShadowButton(frame: .zero)
    let tableView: UITableView = UITableView(frame: .zero, style: .plain)
    var tableViewHeightContraint: NSLayoutConstraint!
    
    let headerLabel: UILabel = UILabel()
//    var viewModel: dashboardViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prostoUI()
        configuredLayout()
    }
    
    func prostoUI() {
        
        tableView.layer.cornerRadius = 15
        tableView.separatorColor = UIColor.white
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = false
        
        view.addSubview(startGameButton)
        view.addSubview(tableView)
        view.addSubview(headerLabel)
        
        tableView.backgroundColor = UIColor.lightGray
        view.backgroundColor = UIColor.gray
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.isTranslucent = false
        
        startGameButton.titleLabel?.font = UIFont(name: "Zapf Dignbats", size: 30)
        startGameButton.setTitle("start game", for: .normal)
//        startGameButton.addTarget(self, action: #selector(start), for: .touchUpInside)
        startGameButton.isEnabled = false
//        startGameButton.
        
        headerLabel.font = UIFont(name: "Zapf Dignbats", size: 30)
        headerLabel.text = "game counter"
        headerLabel.textColor = UIColor.white
        if let rootViewController = UIApplication.shared.delegate?.window??.rootViewController, rootViewController !== navigationController
        { navigationItem.leftBarButtonItem = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: #selector(dismissView))
        }
        
    }
    
    @objc func dismissView(){
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
//    @objc func start(){
//
//    }
    
    func configuredLayout() {
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        startGameButton.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableViewHeightContraint = tableView.heightAnchor.constraint(equalToConstant: 110)
        NSLayoutConstraint.activate([
        
            startGameButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Constants.startGameButtonOfSet),
            startGameButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.leadingOfSet),
            startGameButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            startGameButton.heightAnchor.constraint(equalToConstant: Constants.startButtonHeight),
            tableView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: Constants.tableViewOfSet),
            tableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.leadingOfSet), tableViewHeightContraint,
            headerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: Constants.leadingOfSet),
            headerLabel.heightAnchor.constraint(equalToConstant: Constants.headerLabelHeight)
        ])
    }
    
//   func configuredViewModel() {
//
//    }
//
}

extension dashboardViewController{
    enum Constants{
        static let startGameButtonOfSet: CGFloat = 50.0
        static let leadingOfSet: CGFloat = 20.0
        static let startButtonHeight: CGFloat = 55.0
        static let tableViewOfSet: CGFloat = 20.0
        static let headerLabelHeight: CGFloat = 40.0
    }
}
