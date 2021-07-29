//
//  SmallCell.swift
//  podcasty
//
//  Created by gurrium on 2021/07/29.
//

import UIKit

class SmallCell: UICollectionViewCell {
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 10
            thumbnailImageView.layer.masksToBounds = true
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
