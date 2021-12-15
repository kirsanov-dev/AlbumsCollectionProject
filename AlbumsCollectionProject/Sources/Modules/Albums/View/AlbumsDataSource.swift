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
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var numberOfCells: Int = 0
        if section == 0 {
            numberOfCells = AlbumsModel.firstSectionData.count
        } else if section == 1 {
            numberOfCells = AlbumsModel.secondSectionData.count
        } else if section == 2 {
            numberOfCells = AlbumsModel.thirdSectionData.count
        } else {
            numberOfCells = AlbumsModel.fourthSectionData.count
        }
        return numberOfCells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as! FirstSectionCell
            cellOne.data = AlbumsModel.firstSectionData[indexPath.row]
            return cellOne
        } else if indexPath.section == 1 {
            let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: SecondSectionCell.identifier, for: indexPath) as! SecondSectionCell
            cellTwo.data = AlbumsModel.secondSectionData[indexPath.row]
            return cellTwo
        } else if indexPath.section == 2 {
            let cellThree = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdSectionCell.identifier, for: indexPath) as! ThirdSectionCell
            cellThree.data = AlbumsModel.thirdSectionData[indexPath.row]
            return cellThree
        } else {
            let cellFour = collectionView.dequeueReusableCell(withReuseIdentifier: FourthSectionCell.identifier, for: indexPath) as! FourthSectionCell
            cellFour.data = AlbumsModel.fourthSectionData[indexPath.row]
            return cellFour
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 0 {
            let headerOne = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: FirstSectionHeader.identifier,
                for: indexPath) as! FirstSectionHeader
            return headerOne
        } else if indexPath.section == 1 {
            let headerTwo = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: SecondSectionHeader.identifier,
                for: indexPath) as! SecondSectionHeader
            return headerTwo
        } else if indexPath.section == 2 {
            let headerThree = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: ThirdSectionHeader.identifier,
                for: indexPath) as! ThirdSectionHeader
            return headerThree
        } else {
            let headerFour = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: FourthSectionHeader.identifier,
                for: indexPath) as! FourthSectionHeader
            return headerFour
        }
    }
}

