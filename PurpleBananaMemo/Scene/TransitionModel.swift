//
//  TransitionModel.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/26.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
