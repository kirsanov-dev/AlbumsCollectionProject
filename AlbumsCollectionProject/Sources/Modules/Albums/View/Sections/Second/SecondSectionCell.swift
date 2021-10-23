//
//  SecondSectionCell.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import UIKit

class SecondSectionCell: UICollectionViewCell {
    
static let identifier = "SecondSectionCell"
    
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
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textAlignment = .left
        title.numberOfLines = 2
        title.font = .systemFont(ofSize: 18)
        title.textColor = .black
        return title
    }()
    
    private lazy var numberLabel: UILabel = {
        let number = UILabel()
        number.translatesAutoresizingMaskIntoConstraints = false
        number.textAlignment = .left
        number.numberOfLines = 1
        number.font = .systemFont(ofSize: 18)
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
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.80).isActive = true
        imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.95).isActive = true

        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 7).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true

        numberLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true

    }
    
}
