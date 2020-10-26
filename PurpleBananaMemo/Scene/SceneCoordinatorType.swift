//
//  SceneCoordinatorType.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/26.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
    
}
