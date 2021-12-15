//
//  FourthSectionCell.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import Foundation
import UIKit

class FourthSectionCell: UICollectionViewCell {
    
static let identifier = "FourthSectionCell"
    
    // MARK: - Propeperties
    
    var data: AlbumsModel? {
        didSet {
            guard let data = data else { return }
            imageView.image = data.image
            titleLabel.text = data.titleText
            numberLabel.text = String(data.numberText ?? 0)
        }
    }
    
    // MARK: - Views
      
    private lazy var imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.tintColor = .systemBlue
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textAlignment = .left
        title.numberOfLines = 2
        title.font = .systemFont(ofSize: 20)
        title.textColor = .black
        return title
    }()
    
    private lazy var numberLabel: UILabel = {
        let number = UILabel()
        number.translatesAutoresizingMaskIntoConstraints = false
        number.textAlignment = .left
        number.numberOfLines = 1
        number.font = .systemFont(ofSize: 20)
        number.textColor = .lightGray
        return number
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
    
    // MARK: - Layout
    
    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(numberLabel)
    }
    
    private func setupLayout() {
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        numberLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        numberLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
}
