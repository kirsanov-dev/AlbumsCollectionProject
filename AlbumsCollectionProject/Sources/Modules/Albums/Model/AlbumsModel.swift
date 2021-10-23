//
//  AlbumsModel.swift
//  AlbumsCollectionProject
//
//  Created by Oleg Kirsanov on 23.10.2021.
//

import UIKit

struct AlbumsModel {
    var image: UIImage?
    var titleText: String
    var numberText: Int?
}

extension AlbumsModel {
    static let myAlbumsData = [
        AlbumsModel(image: UIImage(named: "albums-pic1"), titleText: "Weird Buildings", numberText: 8),
        AlbumsModel(image: UIImage(named: "albums-pic2"), titleText: "Old Monuments", numberText: 12),
        AlbumsModel(image: UIImage(named: "albums-pic3"), titleText: "Factories", numberText: 4),
        AlbumsModel(image: UIImage(named: "albums-pic4"), titleText: "TV Towers", numberText: 21),
        AlbumsModel(image: UIImage(named: "albums-pic5"), titleText: "Street Artists", numberText: 9),
        AlbumsModel(image: UIImage(named: "albums-pic6"), titleText: "Shadow and Light", numberText: 8),
        AlbumsModel(image: UIImage(named: "albums-pic7"), titleText: "Bridges", numberText: 3),
        AlbumsModel(image: UIImage(named: "albums-pic8"), titleText: "Trains", numberText: 8)
    ]
    
    static let generalAlbumsData = [
        AlbumsModel(image: UIImage(named: "albums-pic1"), titleText: "Weird Buildings", numberText: 8),
        AlbumsModel(image: UIImage(named: "albums-pic2"), titleText: "Old Monuments", numberText: 12),
        AlbumsModel(image: UIImage(named: "albums-pic3"), titleText: "Factories", numberText: 4),
        AlbumsModel(image: UIImage(named: "albums-pic4"), titleText: "TV Towers", numberText: 21),
    ]
    
    static let socialMedia = [
        AlbumsModel(image: UIImage(named: "facebook"), titleText: "Facebook", numberText: 8),
        AlbumsModel(image: UIImage(named: "telegram"), titleText: "Telegram", numberText: 12),
        AlbumsModel(image: UIImage(named: "whatsapp"), titleText: "Whatsapp", numberText: 4),
    ]
    
    static let otherMediaFiles = [
        AlbumsModel(image: UIImage(systemName: "square.and.arrow.down"), titleText: "Импортированные", numberText: 4),
        AlbumsModel(image: UIImage(systemName: "trash"), titleText: "Удаленные", numberText: 8),
        AlbumsModel(image: UIImage(systemName: "eye.slash"), titleText: "Скрытые", numberText: 12)
        
    ]
}
