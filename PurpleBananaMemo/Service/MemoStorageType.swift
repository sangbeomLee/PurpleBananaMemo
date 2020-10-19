//
//  MemoStorageType.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/19.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation
import RxSwift

protocol MemoStorageType {
    @discardableResult
    func createMemo(contents: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, contents: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
}
