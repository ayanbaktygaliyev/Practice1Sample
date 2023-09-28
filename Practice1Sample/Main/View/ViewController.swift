//
//  ViewController.swift
//  Practice1Sample
//
//  Created by Ernar Khasen on 15.09.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    var viewModel: ViewModelProtocol?
    var isFlippet = false
    
    //MARK: - View
    private lazy var mainTableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        view.register(cellClass: MainTableViewCell.self)
        return view
    }()

    //MARK: - LifeCycle
    override func loadView() {
        super.loadView()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        view.backgroundColor = .white
    }
    
    //MARK: - Methods
    private func setup() {
        setupViews()
        makeConstraints()
    }
    
    private func setupViews() {
        [mainTableView].forEach {
            view.addSubview($0)
        }
    }
    
    private func makeConstraints() {
        mainTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview()
        }
    }
}

extension ViewController {
}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {return 0}
        
        return viewModel.cities.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        guard let viewModel = viewModel else {return 0}
        
        return viewModel.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewModel = viewModel else { return UITableViewCell() }
        
        let model = viewModel.cities[indexPath.section]
        
        let cell: MainTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.configure(model: model)
        
        return cell
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

}

