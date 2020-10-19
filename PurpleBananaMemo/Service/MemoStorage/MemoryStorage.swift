//
//  MemoryStorage.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/19.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation
import RxSwift

class MemoryStorage {
    private var list = [
        Memo(contents: "first", insertDate: Date().addingTimeInterval(-10)),
        Memo(contents: "second", insertDate: Date().addingTimeInterval(-20))
    ]
    
    // 초기에 값을 방출하고 받아들이며 내보내야하니 BehaviorSubject로 선언
    private lazy var store = BehaviorSubject<[Memo]>(value: list)
    
}

extension MemoryStorage: MemoStorageType {
    func createMemo(contents: String) -> Observable<Memo> {
        let memo = Memo(contents: contents)
        list.insert(memo, at: 0)
        
        store.onNext(list)
        
        return Observable.just(memo)
    }
    
    func memoList() -> Observable<[Memo]> {
        return store
    }
    
    func update(memo: Memo, contents: String) -> Observable<Memo> {
        let updated = Memo(original: memo, updatedContents: contents)
        
        if let index = list.firstIndex(where: { $0 == memo }) {
            list.remove(at: index)
            list.insert(updated, at: index)
        }
        
        store.onNext(list)
        
        return Observable.just(updated)
    }
    
    func delete(memo: Memo) -> Observable<Memo> {
        if let index = list.firstIndex(where: { $0 == memo }) {
            list.remove(at: index)
        }
        
        store.onNext(list)
        
        return Observable.just(memo)
    }
    
    
}
