//
//  Memo.swift
//  PurpleBananaMemo
//
//  Created by user on 2020/10/19.
//  Copyright © 2020 sangbeomLee. All rights reserved.
//

import Foundation

struct Memo: Equatable {
    var contents: String
    var insertDate: Date
    var identity: String
    
    init(contents: String, insertDate: Date = Date()) {
        // TODO: - Color, Title
        self.contents = contents
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    init(original: Memo, updatedContents: String) {
        self = original
        self.contents = updatedContents
    }
}
