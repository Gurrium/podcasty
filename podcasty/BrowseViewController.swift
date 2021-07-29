//
//  ViewController.swift
//  podcasty
//
//  Created by gurrium on 2021/07/28.
//

import UIKit

class BrowseViewController: UICollectionViewController {
    enum Section: Hashable {
        struct SectionConfiguration: Hashable {
            let title: String?
            let description: String?
            let shouldShowShowAll: Bool?
        }

        case small(configuration: SectionConfiguration)
        case medium(configuration: SectionConfiguration)
        case large(configuration: SectionConfiguration)
        case eyeCatch
        case banner(configuration: SectionConfiguration)
    }
    enum SectionItem: Hashable {
        case small(thumbnail: UIImage, updatedAt: String, title: String, duration: Int)
        case medium(thumbnail: UIImage, title: String, artist: String)
        case large(thumbnail: UIImage, description: String)
        case eyeCatch(genre: String, title: String, description: String, thumbnail: UIImage)
        case banner(banner: UIImage)
    }

    private let dataSource = UICollectionViewDiffableDataSource<Section, SectionItem>()
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCells()
        collectionView.setCollectionViewLayout(createLayout(), animated: false)
    }
}

extension BrowseViewController {
    private func registerCells() {
        collectionView.register(SmallCell.self, forCellWithReuseIdentifier: "SmallCell")
        collectionView.register(MediumCell.self, forCellWithReuseIdentifier: "MediumCell")
        collectionView.register(LargeCell.self, forCellWithReuseIdentifier: "LargeCell")
        collectionView.register(EyeCatchCell.self, forCellWithReuseIdentifier: "EyeCatchCell")
        collectionView.register(BannerCell.self, forCellWithReuseIdentifier: "BannerCell")
        collectionView.register(SectionHeaderView.self, forSupplementaryViewOfKind: "section-header", withReuseIdentifier: "SectionHeaderView")
    }

    private func createLayout() -> UICollectionViewLayout {
        UICollectionViewCompositionalLayout { _, _ -> NSCollectionLayoutSection? in
            .init(group: .horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)), subitems: []))
        }
    }
}
