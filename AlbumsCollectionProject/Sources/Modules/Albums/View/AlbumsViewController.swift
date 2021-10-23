//
//  AlbumsViewController.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import Foundation
import UIKit

final class AlbumsViewController: UIViewController {
    
    // MARK: - Views
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupCollectionLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(FirstSectionCell.self, forCellWithReuseIdentifier: FirstSectionCell.identifier)
        collectionView.register(FirstSectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FirstSectionHeader.identifier)
        return collectionView
    }()
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .white
        title = "Альбомы"

        configureCollectionView()
    }
    
    // MARK: - Configure Methods
    
    private func configureCollectionView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .white
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        collectionView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        collectionView.dataSource = self
    }
    
    func setupCollectionLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
                
            // section 1
            
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .absolute(180),
                    heightDimension: .absolute(240)
                )
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2)
                
                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .absolute(180),
                    heightDimension: .absolute(480)
                )
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                                         heightDimension: .absolute(35.0))
                
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                                layoutSize: headerSize,
                                elementKind: UICollectionView.elementKindSectionHeader,
                                alignment: .top)
                
                let sectionOne = NSCollectionLayoutSection(group: group)
                sectionOne.boundarySupplementaryItems = [header]
                sectionOne.contentInsets = .init(top: 10, leading: 0, bottom: 20, trailing: 0)
                sectionOne.orthogonalScrollingBehavior = .continuous
                
                return sectionOne
        }
    }
}
