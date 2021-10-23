//
//  AlbumsDataSource.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import Foundation
import UIKit

extension AlbumsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numberOfCells: Int = 0
            numberOfCells = AlbumsModel.firstSectionData.count
        return numberOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as! FirstSectionCell
            cellOne.data = AlbumsModel.firstSectionData[indexPath.row]
            return cellOne
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerOne = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: FirstSectionHeader.identifier,
            for: indexPath) as! FirstSectionHeader
        return headerOne
    }
}

