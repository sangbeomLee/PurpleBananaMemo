//
//  CommonViewModel.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/27.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CommonViewModel: NSObject {
    let title: Driver<String>
    // 이렇게 protocol로 해 놓으면 의존성을 쉽게 주입할 수 있따.
    let sceneCoordinator: SceneCoordinatorType
    let storage: MemoStorageType
    
    init(title: String, sceneCoordinator: SceneCoordinatorType, storage: MemoStorageType) {
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
        self.storage = storage
    }
}
