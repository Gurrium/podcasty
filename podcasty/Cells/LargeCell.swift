//
//  LargeCell.swift
//  podcasty
//
//  Created by gurrium on 2021/07/29.
//

import UIKit

class LargeCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = 10
            containerView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
