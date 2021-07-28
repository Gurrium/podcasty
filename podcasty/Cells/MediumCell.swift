//
//  MediumCell.swift
//  podcasty
//
//  Created by gurrium on 2021/07/28.
//

import UIKit

class MediumCell: UICollectionViewCell {
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 10
            thumbnailImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var artistLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
