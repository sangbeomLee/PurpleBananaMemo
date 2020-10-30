//
//  MemoListCollectionViewCell.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/30.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import UIKit

class MemoListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
}

// MARK: - Setup

private extension MemoListCollectionViewCell {
    func setupView() {
        setupContainerView()
    }
    
    func setupContainerView() {
        containerView.layer.cornerRadius = 8
        containerView.layer.masksToBounds = true
    }
}
