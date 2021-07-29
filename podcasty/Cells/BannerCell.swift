//
//  BannerCell.swift
//  podcasty
//
//  Created by gurrium on 2021/07/29.
//

import UIKit

class BannerCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = 10
            imageView.layer.masksToBounds = true
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
