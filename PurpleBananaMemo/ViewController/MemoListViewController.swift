//
//  MemoListViewController.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/23.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx

// CollectionView 나타내기
class MemoListViewController: UIViewController, ViewModelBindableType {
    @IBOutlet weak var listCollectionView: UICollectionView!
    @IBOutlet weak var addButton: UIButton!
    
    var viewModel: MemoListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listCollectionView.delegate = self
        listCollectionView.dataSource = self
        setupView()
        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        viewModel?.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
    }
}

// MARK: - Setup

private extension MemoListViewController {
    func setupView() {
        setupCollectionView()
    }
    
    func setupCollectionView() {
    }
}

extension MemoListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width/2 - 1
        let height = view.frame.height/4 - 10
        return CGSize(width: width, height: height)
    }
    // TODO: - cell 끼리
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension MemoListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemoListCollectionViewCell", for: indexPath) as? MemoListCollectionViewCell else { return UICollectionViewCell() }
        cell.titleLabel.text = "text \(indexPath.row)"
        
        return cell
    }
}
