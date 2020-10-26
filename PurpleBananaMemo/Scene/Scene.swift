//
//  Scene.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/26.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import UIKit

enum Scene {
    case list(MemoListViewModel)
    case detail(MemoDetailViewModel)
    case compose(MemoComposeViewModel)
}

extension Scene {
    func instantiate(from storyboard: String = "Main") -> UIViewController? {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch self {
        case .list(let viewModel):
            guard let nav = storyboard.instantiateViewController(withIdentifier: "ListNavigation") as? UINavigationController else { return nil }
            guard var listVC = nav.viewControllers.first as? MemoListViewController else {
                return nil
            }
            listVC.bind(viewModel: viewModel)
            return nav
        case .detail(let viewModel):
            var detailVC = MemoDetailViewController.loadFromNib()
            detailVC.bind(viewModel: viewModel)
            return detailVC
        case .compose(let viewModel):
            var composeVC = MemoComposeViewController.loadFromNib()
            composeVC.bind(viewModel: viewModel)
            return composeVC
        }
    }
}
