//
//  MemoListViewModel.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/23.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class MemoListViewModel: CommonViewModel {
    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }
}
