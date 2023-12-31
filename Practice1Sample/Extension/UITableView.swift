//
//  UITableView.swift
//  Practice1Sample
//
//  Created by Ernar Khasen on 15.09.2023.
//

import UIKit

extension UITableView {
    public func dequeueReusableCell<Cell: UITableViewCell>(for indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withIdentifier: "\(Cell.self)", for: indexPath) as? Cell else {
            fatalError("register(cellClass: \(Cell.self) has not been implemented")
        }

        return cell
    }
    
    public func register(cellClass: AnyClass) {
        register(cellClass, forCellReuseIdentifier: "\(cellClass)")
    }
}
