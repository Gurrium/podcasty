//
//  EyeCatchCell.swift
//  podcasty
//
//  Created by gurrium on 2021/07/28.
//

import UIKit

class EyeCatchCell: UICollectionViewCell {
    @IBOutlet var captionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 10
            thumbnailImageView.layer.masksToBounds = true
        }
    }
}
