//
//  FourthSectionHeader.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import Foundation
import UIKit

class FourthSectionHeader: UICollectionReusableView {
    
    static let identifier = "FourthSectionHeader"
    
    // MARK: - Views
    
    private lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.clipsToBounds = true
        return container
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Другие категории"
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    private lazy var showAllLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "См. все"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor = .link
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(container)
        container.addSubview(titleLabel)
        container.addSubview(showAllLabel)
    }
    
    private func setupLayout() {
        container.topAnchor.constraint(equalTo: topAnchor).isActive = true
        container.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        container.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        showAllLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
        showAllLabel.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
    }
}
