//
//  TodoTableViewCell.swift
//  todoList
//
//  Created by ALYSSON DODO on 19/06/23.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
      static let identifier: String = String(describing: TodoTableViewCell.self)
    
    private lazy var screen: TodoTableViewCellScreen = {
        let view = TodoTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addViews()
        setupConstraints()
    }
    
    public func setupCell(data: Todo){
        screen.titleLabel.text = data.title
        screen.descriptionLabel.text = data.description
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
}
